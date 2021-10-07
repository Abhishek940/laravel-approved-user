<?php
namespace App\Http\Controllers\Auth\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use Password;
use Rules;
use Illuminate\Foundation\Auth\ResetsPasswords;
class AdminResetPasswordController extends Controller
{
     /**
     * This will do all the heavy lifting
     * for resetting the password.
     */
   
	use ResetsPasswords;

     /**
     * Where to redirect users after resetting their password.
     *
     * @var string
     */
    protected $redirectTo = '/admin/login';

    /**
     * Only guests for "admin" guard are allowed except
     * for logout.
     * 
     * @return void
     */
    public function __construct()
    {
        
        $this->middleware('guest:admin')->except('logout');
    }
	
	public function rules()
    {
        return [
            'token' => 'required',
            'email' => 'required|email',
	'password' => 'required|string|min:8|confirmed|regex:/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/',
        ];
    }

    /**
     * Show the reset password form.
     * 
     * @param  \Illuminate\Http\Request $request
     * @param  string|null  $token
     * @return \Illuminate\Http\Response
     */
   //public function showResetForm(Request $request, $token = null){
       // return view('auth.Admin.reset',[
         //   'title' => 'Reset Admin Password',
           // 'passwordUpdate' => 'update.password',
           //'token' => $token,
       //]);
    //}
	
	


	public function showResetForm(Request $request, $token = null)
    {
		// $this->validate($request, [
		//'password' => 'required|string|min:6|confirmed|regex:/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$/',
		 
		//]);
        return view('auth.Admin.reset')->with(
            ['token' => $token, 'email' => $request->email]
        );
    }
	
	

    /**
     * Get the broker to be used during password reset.
     *
     * @return \Illuminate\Contracts\Auth\PasswordBroker
     */
    protected function broker(){
		
        return Password::broker('admins');
    }

    /**
     * Get the guard to be used during password reset.
     *
     * @return \Illuminate\Contracts\Auth\StatefulGuard
     */
    protected function guard(){
        return Auth::guard('admin');
    }
}
