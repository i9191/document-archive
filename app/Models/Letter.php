<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Letter extends Model
{
    /** @use HasFactory<\Database\Factories\LetterFactory> */
    use HasFactory;

    protected $fillable = [
        'title',
        'letter_number',
        'file_path',
        'letter_category_id',
    ];

    public function letterCategory()
    {
        return $this->belongsTo(LetterCategory::class);
    }
}
