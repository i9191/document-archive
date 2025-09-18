<?php

namespace Database\Seeders;

use App\Models\Letter;
use App\Models\LetterCategory;
use Illuminate\Database\Seeder;

class LetterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Letter::factory()->count(20)->create();
    }
}
