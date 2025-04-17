<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{

    // public function page(){
    //     return view('test');
    // }

    public function index(){
        $students = Student::all();
        return response()->json([
            'status' => 1,
            'message' => 'Student list',
            'data' =>$students
        ]);
    }

    public function store(Request $request){
        $student = new Student;

        $student->name = $request->name;
        $student->email = $request->email;

    $addedStudent= $student->save();

        return response()->json([
            'status' => 1,
            'message' => 'student added successfully',
            'data' =>$addedStudent
        ]);
    }

    public function update(Request $request,$id){
        $student =  Student::find($id);

        $student->name = $request->name;
        $student->email = $request->email;

       $updatedStudent= $student->save();

        return response()->json([
            'status' => 1,
            'message' => 'student updated successfully',
            'data' =>$updatedStudent
        ]);
    }

    public function delete($id){
        $student = Student::find($id);
        $student ->delete();

        return response()->json([
            'status' => '1',
            'message' => 'student deleted successfully',

        ]);
    }
}
