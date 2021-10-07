<?php

namespace App\Http\Controllers\Auth\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Auth\Api\BaseController as BaseController;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;
class UserController extends Controller
{
     public function login(Request $request){ 
 
      $credentials = [
        'email' => $request->email, 
        'password' => $request->password
    ];
 
    if( auth()->attempt($credentials) ){ 
      $user = Auth::user(); 
      $success['token'] =  $user->createToken('AppName')->accessToken; 
      return response()->json(['success' => $success], 200);
    } else { 
 return response()->json(['error'=>'Unauthorised'], 401);
    } 
  }
  
  
  private $status_code    =        200;

    public function userLogin(Request $request) {

        $validator          =       Validator::make($request->all(),
            [
                "email"             =>          "required|email",
                "password"          =>          "required"
            ]
        );

        if($validator->fails()) {
            return response()->json(["status" => "failed", "validation_error" => $validator->errors()]);
        }


        // check if entered email exists in db
        $email_status       =       User::where("email", $request->email)->first();


        // if email exists then we will check password for the same email

        if(!is_null($email_status)) {
            $password_status    =   User::where("email", $request->email)->where("password", $request->password)->first();

            // if password is correct
            if(!is_null($password_status)) {
                $user           =       $this->userDetail($request->email);

                return response()->json(["status" => $this->status_code, "success" => true, "message" => "OK"]);
            }

            else {
                return response()->json(["status" => "failed", "success" => false, "message" => "Unable to login. Incorrect password."]);
            }
        }

        else {
            return response()->json(["status" => "failed", "success" => false, "message" => "Unable to login. Email doesn't exist."]);
        }
    }
    function user_detail() 
       { 
       $user = Auth::user();
        return response()->json(['success' => $user], 200); 
       } 
}
