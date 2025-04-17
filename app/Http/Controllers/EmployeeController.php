<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;

class EmployeeController extends Controller

{
 public function index(){
    $employeeList = Employee::all();

    return response()->json([
        'status' =>1,
        'message' =>'Employee List',
        'employeeList' =>$employeeList,
    ]);
 }

    public function store(Request $request){

        $employee = new Employee;

        $employee->name = $request->name;
        $employee->email = $request->email;
        $employee->phNum = $request->phNum;

        $employeeDate  = $employee->save();

        return response()->json([
            'status' => 1,
            'message' => 'data has been stored successfully',
            'data' => $employeeDate
        ]);


    }
}
