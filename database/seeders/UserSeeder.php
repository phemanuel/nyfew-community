<?php

namespace Database\Seeders;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Profile;
use App\Models\Post;
use App\Models\Forum;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::factory(10)->create()->each(function ($user) {
            $user->profile()->create(Profile::factory()->make()->toArray());

            $user->posts()->saveMany(Post::factory(3)->make());

            // Create 2 forums by this user
            Forum::factory(2)->create(['user_id' => $user->id])->each(function ($forum) use ($user) {
                Forum::factory(2)->create([
                    'parent_id' => $forum->id,
                    'user_id' => $user->id,
                ]);
            });
        });
    }
}
