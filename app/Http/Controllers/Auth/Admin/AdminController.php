<?php
namespace App\Http\Controllers\Auth\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Role;
use Auth;
use Illuminate\Support\Facades\DB;
use App\Rules\MatchOldPassword;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Password;
use Carbon\Carbon;


class AdminController extends Controller
{
	
     public function index()
       {
        
        return view('auth.Admin.dashboard');
       }
  
	function approveduser($id)
     {
       	$user = DB::table('users')
	          	->select('approved')
	            ->where('id','=',$id)
	           	->first();
    if($user->approved == '1'){
	          	$status = '0';
	           }else{
	         	$status = '1';
	           }

	$values = array('approved' => $status );
	DB::table('users')->where('id',$id)->update($values);

    return back()->with('success','User status has been updated successfully!!');
   }
   
   public function changePassword()
	 {
		return view ('auth.Admin.change-password');
	 }	

    public function UpdatePassword(Request $request)
	{
		
	 $request->validate([
        'current_password' => ['required', new MatchOldPassword],
        'new_password' => 'required|different:current_password|string|min:8|regex:/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/',
        'new_confirm_password' => ['same:new_password'],
        ]);
   
        User::find(auth()->user()->id)->update(['password'=> Hash::make($request->new_password)]);
       return back()->with('success', 'password updated Successfully!!!!');
        } 
		
    public function logout()
    {
        Auth::guard('web')->logout();
        return redirect('/login');
    }		
     

}