<?php

namespace Database\Factories;
use App\Models\Badge;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Badge>
 */
class BadgeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Badge::class;

    public function definition(): array
    {
        return [
            'name' => $this->faker->realText(10),
            'description' => $this->faker->realText(80), 
            'icon' => 'default.png',
        ];
    }
}
