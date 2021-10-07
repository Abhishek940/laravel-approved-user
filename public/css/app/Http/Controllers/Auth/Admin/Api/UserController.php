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
  
    function user_detail() 
       { 
       $user = Auth::user();
        return response()->json(['success' => $user], 200); 
       } 
}
