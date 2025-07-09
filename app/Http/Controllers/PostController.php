<?php

namespace App\Http\Controllers;

use App\Models\PostLike;
use App\Models\PostComment;
use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\View;


class PostController extends Controller
{
    //

    public function likePost(Post $post)
    {
        $user = auth()->user();

        $like = $post->likes()->where('user_id', $user->id)->first();

        if ($like) {
            $like->delete(); // Unlike
        } else {
            $post->likes()->create(['user_id' => $user->id]);
        }

        $post->load('likes.user');

        $html = view('partials.likes-section', ['post' => $post])->render();

        return response()->json([
            'likeCount' => $post->likes->count(),
            'updatedLikesHtml' => $html
        ]);
    }

    public function commentPost(Request $request, Post $post)
    {
        $request->validate([
            'comment' => 'required|string|max:500'
        ]);

        $post->comments()->create([
            'user_id' => auth()->id(),
            'comment' => $request->comment
        ]);

        $post->load('comments.user');

        $html = view('partials.comments-section', ['post' => $post])->render();

        return response()->json([
            'updatedCommentsHtml' => $html
        ]);
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
