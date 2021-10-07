<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\User;
use App\Role;
use App\Permission;
use Illuminate\Support\Facades\Auth;
use App\Rules\MatchOldPassword;
use Illuminate\Support\Facades\DB;
class UserController extends Controller
{
	public function dashboard()
	{
		return view('auth.User.dashboard');
	}
    public function index()
	{
		return view('auth.register');
	}
	public function create()
    {
       $roles = Role::all()->pluck('title', 'id');

        return view('auth.User.users.create', compact('roles'));
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
		$user->name=$request->name;
		$user->mobile=$request->mobile;
		$user->email=$request->email;
		$user->password=Hash::make($request->password);
		$user->address=$request->address;
		$user->approved=0;
		$user->save();
		
		return back()->with('success','User successfully Created !!');
	}
	
	public function userlist()
       {
        $user  = User::all();
        $roles = Role::all();
        return view('auth.User.users.index', compact('user','roles'));
       }
    
	
	public function submituser(Request $request)
      {
		$this->validate($request, [
            'name' => ['required'],
			'mobile' => 'required|unique:users|digits:10',
			'email' => ['required','email','unique:users'],
            'password' => 'required|string|min:6|confirmed|regex:/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/',
            'password_confirmation' => ['same:password'],
        	'address' => ['required','max:255'],
        ]);

        $request['password'] = Hash::make($request->password);
	    $user = User::create($request->all());
	    $user->roles()->sync($request->input('roles', []));
		
		return redirect()->route('user-list')->with('success','User successfully Created !!');
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

    return redirect()->route('user-list')->with('success','User status has been updated successfully!!');
   }
   public function deleteuser(Request $request, $id)
    {
        $user = User::find($request->id);
        User::where("id", $user->id)->delete();
        return redirect()->route('user-list')->with('success','data successfully deleted !!');
    }
	
	public function createrole()
    {
       $permissions = Permission::all()->pluck('title', 'id');

        return view('auth.User.roles.create-role', compact('permissions'));
    }
	public function rolesubmit(Request $request)
    {
         $this->validate($request,[
           'title' => ['required', 'string','max:255','unique:roles'],
            ]);

        $role = Role::create($request->all());
        $role->permissions()->sync($request->input('permissions', []));

        return redirect()->route('roles.index')->with('success','Role successfully Inserted !!');
    
    }

	public function rolelist()
    {
        $roles = Role::all();

        return view('auth.User.roles.index', compact('roles'));
    }
	
	public function editrole(Role $role)
        {
       
        $permissions = Permission::all()->pluck('title', 'id');

        $role->load('permissions');

        return view('auth.User.roles.edit-role', compact('permissions', 'role'));
       }
	   
	   public function updaterole(Request $request, Role $role)
        {
            $this->validate($request,[
            'title' => 'unique:roles,title,'.$role->id
            ]);
            
        $role->update($request->all());
        $role->permissions()->sync($request->input('permissions', []));

        return redirect()->route('roles.index')->with('success','Role successfully Updated !!');
    
        }
	public function deleterole($id)
    {
      $role=Role::find($id);
      
      $role->delete();

     return back()->with('success','User successfully deleted');

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

        return redirect()->route('permission-list')->with('success','Permission successfully Created !!');
       }
	   
	   public function permissionlist()
     {
        $permissions = Permission::all();

        return view('auth.User.permissions.index', compact('permissions'));
    }
	
	public function editpermission(Permission $permission)
     {
        
       return view('auth.User.permissions.edit-permission', compact('permission'));
     }
	 
	 public function updatepermission(Request $request, Permission $permission)
       {

        $this->validate($request,[
           
            'title' => 'unique:permissions,title,'.$permission->id
            ]);
        
          $permission->update($request->all());

       	return redirect()->route('permission-list')->with('success','Permission successfully Updated !!');
       }
	   
	public function deletepermission($id)
    {
      $permission=Permission::find($id);
      
      $permission->delete();

     return back()->with('success','Permission successfully deleted');
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
