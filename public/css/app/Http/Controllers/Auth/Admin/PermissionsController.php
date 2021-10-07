<?php
namespace App\Http\Controllers\Auth\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\MassDestroyPermissionRequest;
use App\Http\Requests\StorePermissionRequest;
use App\Http\Requests\UpdatePermissionRequest;
use App\Permission;
use Gate;
use Symfony\Component\HttpFoundation\Response;

class PermissionsController extends Controller
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
        //abort_if(Gate::denies('permission_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $permissions = Permission::all();

        return view('auth.Admin.permissions.index', compact('permissions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
      //abort_if(Gate::denies('create-permission'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('auth.Admin.permissions.create-permission');
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
           'title' => ['required', 'string','max:255','unique:permissions'],
			]);
        $permission = Permission::create($request->all());

        return redirect()->route('permissions.index')->with('success','Permission successfully Created !!');
       }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
         public function show(Permission $permission)
        {
        abort_if(Gate::denies('permission-list'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.permissions.show', compact('permission'));
        }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
         public function edit(Permission $permission)
         {
        abort_if(Gate::denies('update-permission'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('auth.Admin.permissions.edit-permission', compact('permission'));
        }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
       public function update(Request $request, Permission $permission)
       {

        $this->validate($request,[
           
            'title' => 'unique:permissions,title,'.$permission->id
            ]);
        
          $permission->update($request->all());

       	return redirect()->route('permissions.index')->with('success','Permission successfully Updated !!');
       }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Permission $permission)
    {

		if ($permission->roles()->count()) {
         return back()->with('warning','Sorry this Permission Cannot be delete ?');
         }
         $permission->delete();

     return back()->with('success','Permission successfully deleted');
            
    }

   public function deleteAll(Request $request,Permission $permission)
    {
         

        $ids = $request->ids;

        if ($permission->roles()->count()) {
         return back()->with('warning','Sorry this Permission Cannot be delete ?');
         }
       
        \DB::table("permissions")->whereIn('id',explode(",",$ids))->delete();
        return response()->json(['success'=>"Permission Deleted successfully."]);
		//return redirect()->route('permissions.index')->with('success','Permission successfully deleted !!');
    }
	
	
}
