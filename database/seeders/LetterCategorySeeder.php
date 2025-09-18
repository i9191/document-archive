<?php

namespace Database\Seeders;

use App\Models\LetterCategory;
use Illuminate\Database\Seeder;

class LetterCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        LetterCategory::firstOrCreate([
            'name' => 'Undangan'],[
            'description' => 'Undangan rapat, koordinasi, dsb',
        ]);

        LetterCategory::firstOrCreate([
            'name' => 'Pengumuman'],[
            'description' => 'Surat-surat yang terkait dengan pengumuman',
        ]);

        LetterCategory::firstOrCreate([
            'name' => 'Nota Dinas'],[
            'description' => 'Nota dari Dinas',
        ]);

        LetterCategory::firstOrCreate([
            'name' => 'Pemberitahuan'],[
            'description' => 'Surat-surat yang berisi informasi formal',
        ]);
    }
}
