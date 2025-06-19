<?php

namespace App\Http\Controllers;
use App\Models\User;
use App\Models\Group;
use App\Models\Post;
use Carbon\Carbon;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    //

    public function index()
    {
        $today = Carbon::today();
        
        $birthdayUsers = User::whereHas('profile', function ($query) use ($today) {
        $query->whereMonth('dob', $today->month)
              ->whereDay('dob', $today->day);
        })->with('profile')->get();

        $members = User::where('user_type', 1)->get();
        $groups = Group::all();

        $posts = Post::with(['user', 'likes', 'comments.user'])->latest()->get();

        return view('dashboard.user-feed', compact('members','birthdayUsers','groups','posts'));
    }
}
