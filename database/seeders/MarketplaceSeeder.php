<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\MarketplaceItem;

class MarketplaceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::all()->each(function ($user) {
            // Each user creates between 1 to 3 marketplace items
            MarketplaceItem::factory(rand(1, 3))->create([
                'user_id' => $user->id,
            ]);
        });
    }
}
