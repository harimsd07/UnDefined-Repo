<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreTaskRequest;
use App\Http\Resources\StudentResource;
use App\Models\StudentTask;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function store(StoreTaskRequest $request){
        $request->validated($request->all);

        $task = StudentTask::create([

            'title' => $request->title,
            'description' => $request->description
        ]);

        return new StudentResource($task);
    }
}
