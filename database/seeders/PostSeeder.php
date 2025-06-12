<?php

namespace Database\Seeders;
use App\Models\User;
use App\Models\Post;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
     public function run(): void
    {
        User::all()->each(function ($user) {
            $user->posts()->createMany(Post::factory(3)->make()->toArray());
        });
    }
}
