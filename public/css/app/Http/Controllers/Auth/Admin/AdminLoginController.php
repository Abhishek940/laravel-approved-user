<?php
namespace App\Http\Controllers\Auth\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Admin;
class AdminLoginController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest:admin')->except('logout');
    }

    public function login()
    {
        return view('auth.Admin.login3');
    }

    public function loginsubmit(Request $request)
    {
      // Validate form data
        $this->validate($request, [
            'email' => 'required|email',
            'password' => 'required|min:6'
        ]);

        // Attempt to log the user in
        if(Auth::guard('admin')->attempt(['email' => $request->email, 'password' => $request->password], $request->remember))
        {
            return redirect()->intended(route('admin.dashboard'));
        }

        // if unsuccessful
      //  return redirect()->back()->withInput($request->only('email','remember'));
     return redirect()->back()->withErrors(
    [
        'password' => 'Invalid Credentials , Please try again!'
    ]
);
   } 
   
	
       	public function logout()
    {
        Auth::guard('admin')->logout();
        return redirect('/admin');
    }
	
}
