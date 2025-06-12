<?php

namespace Database\Factories;
use App\Models\Forum;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Forum>
 */
class ForumFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Forum::class;

    public function definition(): array
    {
        return [
            'title' => $this->faker->realText(50),
            'description' => $this->faker->realText(80),
            'parent_id' => null, 
            'user_id' => User::factory(),
        ];
    }
}
