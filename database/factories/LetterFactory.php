<?php

namespace Database\Factories;

use App\Models\LetterCategory;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Letter>
 */
class LetterFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title' => $this->faker->sentence(3),
            'letter_number' => strtoupper($this->faker->bothify('SK-####/KD')),
            'file_path' => 'letters/dummy.pdf',
            'letter_category_id' => LetterCategory::inRandomOrder()->first()->id,
        ];
    }
}
