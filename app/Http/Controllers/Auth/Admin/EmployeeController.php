<?php

namespace App\Http\Controllers\Auth\Admin;
use App\Http\Controllers\Controller;
use App\Models\Role;
use App\Models\User;
use Gate;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class EmployeeController extends Controller
{
    public function index()
    {
        $user = User::all();

        return view('auth.Admin.user.index', compact('user'));
    }

    public function create()
    {
       $roles = Role::all()->pluck('title', 'id');
       return view('auth.Admin.user.create', compact('roles'));
    }

    public function store(Request $request)
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

        return redirect()->route('user.index')->with('success','User successfully Registered');;
    }

    public function edit(User $user)
    {
       $roles = Role::all()->pluck('title', 'id');

        $user->load('roles');

        return view('auth.Admin.user.edit', compact('roles', 'user'));
    }

    public function update(Request $request, User $user)
    {
        $user->update($request->all());
        $user->roles()->sync($request->input('roles', []));

        return redirect()->route('user.index')->with('success','User successfully Update');
    }

    public function show(User $user)
    {
        
    }

   public function destroy($id)
    {
      $user=User::find($id);
      
      $user->delete();

     return back()->with('success','User successfully deleted');

 }
}
