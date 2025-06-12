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
            'title' => fake()->words(3, true),
            'description' => fake()->paragraph(),
            'price' => fake()->randomFloat(2, 10, 500),
            'type' => fake()->randomElement(['digital', 'physical']),
            'image' => 'uploads/marketplace/default.png', // or fake()->imageUrl()
            'status' => fake()->randomElement(['available', 'sold']),
        ];
    }
}
