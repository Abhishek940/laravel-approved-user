<?php
namespace App\Http\Controllers\Auth\User;
use App\Http\Controllers\Controller;
use App\Models\Role;
use App\Models\Permission;
use App\Models\User;
use Gate;
use Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Rules\MatchOldPassword;
use Symfony\Component\HttpFoundation\Response;

class UsersController extends Controller
{
	  public function dashboard()
       {
           return view('auth.User.dashboard');
       }
       public function index()
       {
       $user = User::all();

        return view('auth.User.users.index', compact('user'));
    }

    public function create()
    {
       $roles = Role::all()->pluck('title', 'id');

        return view('User.users.create', compact('roles'));
    }

    public function store(Request $request)
    {
        $user = User::create($request->all());
        $user->roles()->sync($request->input('roles', []));

        return redirect()->route('users.index');
    }

    public function edit(User $user)
    {
        $roles = Role::all()->pluck('title', 'id');

        $user->load('roles');

        return view('User.users.edit', compact('roles', 'user'));
    }

    public function update(Request $request, User $user)
    {
        $user->update($request->all());
        $user->roles()->sync($request->input('roles', []));

        return redirect()->route('users.index');
    }

    public function destroy(User $user)
    {
       $user->delete();

   return back()->with('success','User successfully deleted');
    }
	
	public function logout()
    {
        Auth::guard('web')->logout();
        return redirect('/login');
    }

   public function userregister()
	{
		return view('auth.register');
	}	
	
	public function submit(Request $request)
	{
		$this->validate($request, [
            'name' => ['required'],
			'mobile' => 'required|unique:users|digits:10',
			'email' => ['required','email','unique:users'],
            'password' => 'required|string|min:6|confirmed|regex:/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/',
            'password_confirmation' => ['same:password'],
        	'address' => ['required','max:255'],
        ]);

		$user= new User;
		$user->user_type='user';
		$user->name=$request->name;
		$user->mobile=$request->mobile;
		$user->email=$request->email;
		$user->password=Hash::make($request->password);
		$user->address=$request->address;
		$user->approved=0;
		$user->save();
		
		return back()->with('success','User successfully Created !!');
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
   
   public function createrole()
    {
       $permissions = Permission::all()->pluck('title', 'id');

        return view('auth.User.roles.create-role', compact('permissions'));
    }
	public function submitrole(Request $request)
    {
         $this->validate($request,[
           'title' => ['required', 'string','max:255','unique:roles'],
            ]);

        $role = Role::create($request->all());
        $role->permissions()->sync($request->input('permissions', []));

        return redirect()->route('role-list')->with('success','Role successfully Inserted !!');
    
    }
	
   public function rolelist()
    {
        $roles = Role::all();

        return view('auth.User.roles.index', compact('roles'));
    }
	public function createpermission()
    {
      return view('auth.User.permissions.create-permission');
    }
	public function submitpermission(Request $request)
       {
		   $this->validate($request,[
           'title' => ['required', 'string','max:255','unique:permissions'],
			]);
        $permission = Permission::create($request->all());

        return redirect()->route('permissions-list')->with('success','Permission successfully Created !!');
       }
	   
	   public function permissionlist()
    {
        $permissions = Permission::all();

        return view('auth.User.permissions.index', compact('permissions'));
    }
	
	public function changePassword()
	 {
		return view ('auth.User.change-password');
	 }	
	 public function UpdatePassword(Request $request)
	{
		
	 $request->validate([
        'current_password' => ['required', new MatchOldPassword],
        'new_password' => 'required|different:current_password|string|min:8|regex:/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/',
        'new_confirm_password' => ['same:new_password'],
        ]);
   
        User::find(auth()->user()->id)->update(['password'=> Hash::make($request->new_password)]);
       // Auth::logoutOtherDevices($request->new_password);
       // dd('Password change successfully.');
	     return back()->with('success', 'password updated Successfully!!!!');
        } 

    
}
