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
            'commentCount' => $post->comments->count(),
            'updatedCommentsHtml' => $html
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'content' => 'required|string|max:1000',
        ]);

        $post = new Post();
        $post->user_id = auth()->id();
        $post->content = $request->input('content');
        $post->save();

        // Render the post partial to HTML
        $html = view('partials.single-post', compact('post'))->render();

        return response()->json([
            'message' => 'Post created successfully',
            'html' => $html,
        ]);
    }

    public function loadAllComments(Post $post)
    {
        $post->load(['comments.user' => function ($q) {
            $q->orderBy('created_at', 'desc');
        }]);

        $html = view('partials.all-comments', ['post' => $post])->render();

        return response()->json([
            'commentCount' => $post->comments->count(),
            'html' => $html
        ]);
    }
    

}
