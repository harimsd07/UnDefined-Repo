<?php
namespace App\Traits;

trait HttpResponses {
    public function authSuccess($data,$message=null,$code = 200){
        return response()->json([
            'status' =>'Request was successful',
            'message' =>$message,
            'data' =>$data
        ],$code);
    }

    public function authError($data,$message=null,$code){
    return response()->json([
        'status' => 'Error has occurred',

        'data' => $data
    ],$code);
    }
}
