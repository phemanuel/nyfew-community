<?php

namespace App\Http\Controllers;

use App\Models\PostLike;
use App\Models\PostComment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;


class PostController extends Controller
{
    //

    public function likePost(Request $request)
    {
        try {
            $postId = $request->post_id;
            $userId = auth()->id();

            Log::info('Like request received', ['post_id' => $postId, 'user_id' => $userId]);

            $like = PostLike::where('post_id', $postId)->where('user_id', $userId)->first();

            if ($like) {
                $like->delete();
                Log::info('Post unliked', ['post_id' => $postId, 'user_id' => $userId]);
                return response()->json(['status' => 'unliked']);
            } else {
                PostLike::create(['post_id' => $postId, 'user_id' => $userId]);
                Log::info('Post liked', ['post_id' => $postId, 'user_id' => $userId]);
                return response()->json(['status' => 'liked']);
            }
        } catch (\Exception $e) {
            Log::error('Error in likePost', [
                'error' => $e->getMessage(),
                'post_id' => $request->post_id,
                'user_id' => auth()->id(),
            ]);
            return response()->json(['status' => 'error', 'message' => 'Something went wrong.']);
        }
    }

    public function commentPost(Request $request)
    {
        try {
            $request->validate(['comment' => 'required']);

            $comment = PostComment::create([
                'post_id' => $request->post_id,
                'user_id' => auth()->id(),
                'comment' => $request->comment
            ]);

            Log::info('Comment added', [
                'post_id' => $request->post_id,
                'user_id' => auth()->id(),
                'comment' => $request->comment
            ]);

            return response()->json([
                'status' => 'success',
                'comment' => $comment->comment,
                'user' => $comment->user->first_name
            ]);
        } catch (\Exception $e) {
            Log::error('Error in commentPost', [
                'error' => $e->getMessage(),
                'post_id' => $request->post_id,
                'user_id' => auth()->id(),
            ]);
            return response()->json(['status' => 'error', 'message' => 'Failed to add comment.']);
        }
    }

    public function refreshPostSections($postId)
    {
        $post = Post::with(['likes.user', 'comments.user'])->findOrFail($postId);

        $sections = view('user-feed', compact('post'))->renderSections();

        return response()->json([
            'likes' => $sections["likesSection-{$postId}"] ?? '',
            'comments' => $sections["commentsSection-{$postId}"] ?? '',
        ]);
    }

    public function loadAllComments($id)
    {
        $post = Post::with(['comments.user'])->findOrFail($id);

        $view = view('partials.comments', compact('post'))->render();

        return response()->json([
            'status' => 'success',
            'html' => $view,
        ]);
    }

}
