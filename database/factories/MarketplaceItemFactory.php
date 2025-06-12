<?php

namespace Database\Factories;
use App\Models\MarketplaceItem;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\MarketplaceItem>
 */
class MarketplaceItemFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
            return [
            'title' => $this->faker->realText(10),
            'description' => $this->faker->realText(80),
            'price' => fake()->randomFloat(2, 10, 500),
            'type' => fake()->randomElement(['digital', 'physical']),
            'image' => 'default.png', 
            'status' => fake()->randomElement(['available', 'sold']),
        ];
    }
}
