<?php

namespace Database\Factories;
use App\Models\Post;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'content' => $this->faker->realText(200),
            'image' => $this->faker->imageUrl(640, 480, 'cats', true, 'Post'), // Random image
            'type' => $this->faker->randomElement(['text', 'image', 'video']), // You can define your own list
            'visibility' => $this->faker->randomElement(['public', 'private', 'friends']),
        ];
    }
}
