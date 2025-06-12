<?php

namespace Database\Factories;
use App\Models\Thread;
use App\Models\User;
use App\Models\Forum;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Thread>
 */
class ThreadFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title' => $this->faker->realText(50), 
            'content' => $this->faker->paragraphs(3, true),
            'forum_id' => Forum::factory(),
            'user_id' => User::factory(),
        ];
    }
}
