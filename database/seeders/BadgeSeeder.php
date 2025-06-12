<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Badge;
use App\Models\User;

class BadgeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Badge::factory(10)->create();

        // Attach random badges to users
        User::all()->each(function ($user) {
            $user->badges()->attach(Badge::inRandomOrder()->take(2)->pluck('id'));
        });
    }
}
