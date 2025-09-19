<?php

use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::redirect('/', '/letters');
Route::resource('letters', \App\Http\Controllers\LetterController::class);
Route::get('letters/download/{letter}', [\App\Http\Controllers\LetterController::class, 'download'])->name('letters.download');
