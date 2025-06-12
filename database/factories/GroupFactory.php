<?php

namespace Database\Factories;
use App\Models\Group;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Group>
 */
class GroupFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Group::class;

    public function definition(): array
    {
        return [
            'name' => $this->faker->realText(15),
            'description' => $this->faker->realText(80),
            'type' => $this->faker->randomElement(['public', 'private']),
            'avatar' => 'blank.png', 
            'owner_id' => User::factory(),
        ];
    }
}
