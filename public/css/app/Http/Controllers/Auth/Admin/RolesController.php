<?php
namespace App\Http\Controllers\Auth\Admin;
use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyRoleRequest;
use App\Http\Requests\StoreRoleRequest;
use App\Http\Requests\UpdateRoleRequest;
use Illuminate\Http\Request;
use App\Permission;
use App\Role;
use App\Admin;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Auth;

use Response;

class RolesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
	 public function __construct()
     {
       $this->middleware('auth:admin');
     }
	 
    public function index()
    {
        // abort_if(Gate::denies('role_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $roles = Role::all();

        return view('auth.Admin.roles.index', compact('roles'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //abort_if(Gate::denies('role_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $permissions = Permission::all()->pluck('title', 'id');

        return view('auth.Admin.roles.create-role', compact('permissions'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         $this->validate($request,[
           'title' => ['required', 'string','max:255','unique:roles'],
            ]);

        $role = Role::create($request->all());
        $role->permissions()->sync($request->input('permissions', []));

        return redirect()->route('roles.index')->with('success','Role Successfully Created !!');
    
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
       public function edit(Role $role)
        {
        //abort_if(Gate::denies('role_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $permissions = Permission::all()->pluck('title', 'id');

        $role->load('permissions');

        return view('auth.Admin.roles.edit-role', compact('permissions', 'role'));
       }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
        public function update(Request $request, Role $role)
        {
            $this->validate($request,[
          // 'title' => ['required', 'string','max:255','unique:roles'],
             'title' => 'unique:roles,title,'.$role->id
            ]);
            
        $role->update($request->all());
        $role->permissions()->sync($request->input('permissions', []));

        return redirect()->route('roles.index')->with('success','Role Successfully Updated !!');
    
        }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Role $role)
    {
      // abort_if(Gate::denies('delete-role'), Response::HTTP_FORBIDDEN, '403 Forbidden');


     if ($role->admin()->count()) {
       return back()->with('warning','Sorry this role Cannot be delete ?');
       }
      $role->delete();

     return back()->with('success','Role Successfully deleted');

    

    }

 

    
}
