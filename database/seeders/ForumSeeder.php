<?php

namespace Database\Seeders;
use App\Models\Forum;
use App\Models\Thread;
use App\Models\User;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ForumSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Forum::factory(3)->create()->each(function ($forum) {
            $forum->threads()->createMany(
                Thread::factory(2)
                    ->make([
                        'forum_id' => $forum->id,
                        'user_id' => User::inRandomOrder()->first()->id,
                    ])
                    ->map->toArray()
                    ->toArray()
            );
        });
    }
}
