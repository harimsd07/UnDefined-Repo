<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\StudentTaskController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


Route::post('register',[AuthController::class,'register']);
Route::post('login',[AuthController::class,'login']);

Route::group(['middleware' => ['auth:sanctum']],function(){
    Route::resource('/task',StudentTaskController::class);
    Route::post('logout',[AuthController::class,'logout']);
});