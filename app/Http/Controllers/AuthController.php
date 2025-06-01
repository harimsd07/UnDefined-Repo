<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserLoginRequest;
use App\Http\Requests\UserRegisterRequest;
use App\Models\User;
use App\Traits\HttpResponse;
use App\Traits\HttpResponses;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    use HttpResponses;
    public function register(UserRegisterRequest $request){

        $request->validated($request->all());

        $user = User::create([
            'name'  => $request->name,
            'email'  => $request->email,
            'dob'  => $request->dob,
            'password'  => Hash::make($request->password),
        ]);
        return $this->authSuccess([
           'student_data'=> $user,

            'token'  => $user->createToken('Sanctum Token'.$user->name)->plainTextToken,
        ]);


    }

    public function login(UserLoginRequest $request){
        if(!Auth::attempt($request->only(['email','password']))){
            return $this->authError('','Creadentials doesnt match',401);
        }
        $user = User::where('email',$request->email)->first();

        return $this->authSuccess(
        [
            'message' =>'User Logged in successfully',
        'token' => $user->createToken('SanctumToken')->plainTextToken
            ]
    );
    }

    public function logout(){
        Auth::user()->currentAccessToken()->delete();
        return $this->authSuccess('User logged out successfully');
    }
}
