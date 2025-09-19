<?php

namespace App\Http\Controllers;

use App\Models\LetterCategory;
use App\Http\Requests\StoreLetterCategoryRequest;
use App\Http\Requests\UpdateLetterCategoryRequest;
use Inertia\Inertia;

class LetterCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Inertia::render('LetterCategory/Index', [
            'letter_categories' => LetterCategory::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return Inertia::render('LetterCategory/Create',[
            'last_id' => LetterCategory::all()->last()->id
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreLetterCategoryRequest $request)
    {
        LetterCategory::create([
            'name' => $request->name,
            'description' => $request->description
        ]);
        return redirect()->route('letter_categories.index')->with('success', 'Kategori surat berhasil disimpan.');
    }

    /**
     * Display the specified resource.
     */
    public function show(LetterCategory $letterCategory)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(LetterCategory $letterCategory)
    {
        return Inertia::render('LetterCategory/Create', [
            'letter_category' => $letterCategory
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateLetterCategoryRequest $request, LetterCategory $letterCategory)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(LetterCategory $letterCategory)
    {
        //
    }
}
