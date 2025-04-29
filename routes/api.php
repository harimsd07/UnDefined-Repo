<?php

use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\StudentController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


Route::get('test',function(){
    return view('test');
});



Route::get('getStudentList',[StudentController::class,'index']);
Route::post('addStudent',[StudentController::class,'store']);
Route::put('updateStudent/{id}',[StudentController::class,'update']);
Route::delete('deleteStudent/{id}',[StudentController::class,'delete']);



Route::post('/employeeData',[EmployeeController::class,'store']);
Route::get('/employeeList',[EmployeeController::class,'index']);
Route::put('/updateEmployeeData/($id}',[EmployeeController::class,'update']);
Route::delete('/deleteEmployeeData/{$id}',[EmployeeController::class,'delete']);
