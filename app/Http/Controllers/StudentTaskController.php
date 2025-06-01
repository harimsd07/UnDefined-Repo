<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreTaskRequest;
use App\Http\Resources\StudentResource;
use App\Models\StudentTask;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StudentTaskController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return StudentResource::collection(
            StudentTask::where('user_id',Auth::user()->id)->get()
        );
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreTaskRequest $request){
        $request->validated($request->all);

        $task = StudentTask::create([
            'user_id' =>Auth::user()->id,
            'title' => $request->title,
            'description' => $request->description
        ]);

        return new StudentResource($task);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
