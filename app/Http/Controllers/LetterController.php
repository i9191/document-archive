<?php

namespace App\Http\Controllers;

use App\Models\Letter;
use App\Http\Requests\StoreLetterRequest;
use App\Http\Requests\UpdateLetterRequest;
use App\Models\LetterCategory;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Storage;
use Str;

class LetterController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        return Inertia::render('Letter/Index', [
            'letters' => Letter::with('letterCategory')
                ->when($request->search, function ($query, $search) {
                    $query->where('title', 'like', "%{$search}%");
                })
                ->orderByDesc('created_at')
                ->take(20)
                ->get(),
            'filters' => $request->only(['search']),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return Inertia::render('Letter/Create', [
            'letter_categories' => LetterCategory::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreLetterRequest $request)
    {
        try {
            $filename = Str::uuid() . '.' . $request->file->getClientOriginalExtension();
    
            $path = $request->file->storeAs('letters', $filename);
    
            Letter::create([
                'title' => $request->title,
                'letter_number' => $request->letter_number,
                'letter_category_id' => $request->letter_category_id,
                'file_path' => $path
            ]);
            return redirect()->route('letters.index')->with('success', 'Surat berhasil diarsipkan.');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', 'Surat gagal diarsipkan.');
        }

    }

    /**
     * Display the specified resource.
     */
    public function show(Letter $letter)
    {
        return Inertia::render('Letter/Show', [
            'letter' => $letter->load('letterCategory')
        ]);
    }

    public function download(Letter $letter)
    {
        return response()->file(Storage::disk('local')->path($letter->file_path));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Letter $letter)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateLetterRequest $request, Letter $letter)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Letter $letter)
    {
        if (Storage::disk('local')->exists($letter->file_path)) {
            Storage::disk('local')->delete($letter->file_path);
        }
        $letter->delete();

        return redirect()->route('letters.index')->with('success', 'Surat berhasil dihapus.');
    }
}
