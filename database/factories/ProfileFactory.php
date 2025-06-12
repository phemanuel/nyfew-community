<?php

namespace Database\Factories;
use App\Models\Profile;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Profile>
 */
class ProfileFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Profile::class;

    public function definition(): array
    {
        return [
            'dob' => $this->faker->date('Y-m-d', '-18 years'), // Minimum age 18
            'gender' => $this->faker->randomElement(['male', 'female', 'other']),
            'phone' => $this->faker->phoneNumber,
            'social_links' => json_encode([
                'facebook' => $this->faker->url,
                'twitter' => $this->faker->url,
                'linkedin' => $this->faker->url,
            ]),
        ];
    }
}
