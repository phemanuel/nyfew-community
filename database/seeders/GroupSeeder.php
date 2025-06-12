<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Group;
use App\Models\User;

class GroupSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Group::factory(5)->create()->each(function ($group) {
            // Attach 5 random members to each group
            $members = User::inRandomOrder()->take(5)->pluck('id');
            $group->members()->attach($members);
        });
    }
}
