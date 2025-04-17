<?php

use App\Http\Controllers\StudentController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});


Route::get('test',function(){
    return view('test');
});

Route::get('test',[StudentController::class,'page']);