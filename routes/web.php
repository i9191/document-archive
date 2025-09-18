<?php

use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::redirect('/', '/letters');
Route::resource('letters', \App\Http\Controllers\LetterController::class);