<?php
namespace App\Http\Controllers\Auth\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Admin;
use App\User;
use App\Role;
use App\leave;
use App\leaveType;
use Calendar;
use App\TimeEntry;
use App\TimeEntryUser;
use Auth;
use Gate;
use Response;
use Illuminate\Support\Facades\DB;
use App\Rules\MatchOldPassword;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\UpdateUserRequest;
use App\Mail\AdminWelcomeMail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Foundation\Auth\ResetsPasswords;
use Illuminate\Support\Facades\Password;

class SuperAdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
	 use ResetsPasswords;
    public function __construct()
     {
       $this->middleware('auth:admin');
     }
       public function index()
       {
        //abort_if(Gate::denies('useraccess'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $admin = Admin::all();
        $roles=Role::all();
        return view('auth.Admin.admin.index', compact('admin','roles'));
       }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       //abort_if(Gate::denies('user_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $roles = Role::all()->pluck('title', 'id');

        return view('auth.Admin.admin.create', compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
      public function store(Request $request)
      {
		$this->validate($request, [
            'name' => ['required', 'string', 'max:35'],
			//'mobile' => 'required|unique:admins|digits:10',
			'mobile' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|unique:admins|digits:10',
       'email' => ['required', 'string', 'email', 'max:255', 'unique:admins'],
            //'password' => ['required', 'string', 'min:6', 'confirmed'],
			'password' => 'required|string|min:8|confirmed|regex:/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/',
      'password_confirmation' => ['same:password'],
     //	'address' => ['required', 'string', 'max:255'],
        ]);

        $request['password'] = Hash::make($request->password);
		//'password' => bcrypt($request->password),
        $admin = Admin::create($request->all());
        $admin->roles()->sync($request->input('roles', []));
		
	      $email = $request->get('email');
              $data = ([
              'name' => $request->get('name'),
              'email' => $request->get('email'),
              'mobile' => $request->get('mobile'),
			  'password'=>$request->get('password'),
          ]);
		  
	//  Mail::to($email)->send(new AdminWelcomeMail($data));
      
       	return redirect()->route('admin.index')->with('success','Admin successfully Inserted !!');
       }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
       public function show(Admin $admin)
        {
        //abort_if(Gate::denies('user_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $user->load('roles');

        return view('admin.users.show', compact('user'));
      }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
        public function edit(Admin $admin)
       {
       // abort_if(Gate::denies('user_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $roles = Role::all()->pluck('title', 'id');

        $admin->load('roles');

        return view('auth.Admin.admin.edit', compact('roles', 'admin'));
      }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
       public function update(Request $request,Admin $admin)
       {

        $this->validate($request, [
           
      //'mobile' => 'required|unique:admins|digits:10',
        'mobile' => 'unique:admins,mobile,'.$admin->id,
        'email' => 'unique:admins,email,'.$admin->id
      ]);

        $admin->update($request->all());
        $admin->roles()->sync($request->input('roles', []));

        //return redirect()->route('admin.users.index');
		return redirect()->route('admin.index')->with('success','Admin successfully Updated !!');
      }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //abort_if(Gate::denies('user_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $admin=Admin::find($id);
      
      if ($admin->roles()->count()) {
       return back()->with('warning','Sorry this Admin Cannot be delete this Admin Assign Role ?');
       }
      $admin->delete();

     return back()->with('success','Admin successfully deleted');

    
	}
}
