<?php

use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::redirect('/', '/letters');
Route::resource('letters', \App\Http\Controllers\LetterController::class);
Route::get('letters/download/{letter}', [\App\Http\Controllers\LetterController::class, 'download'])->name('letters.download');
Route::resource('letter_categories', \App\Http\Controllers\LetterCategoryController::class);
Route::get('/about', function () {
    return Inertia::render('About');
})->name('about');
