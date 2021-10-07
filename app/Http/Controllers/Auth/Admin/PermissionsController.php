<?php
namespace App\Http\Controllers\Auth\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\MassDestroyPermissionRequest;
use App\Http\Requests\StorePermissionRequest;
use App\Http\Requests\UpdatePermissionRequest;
use App\Models\Permission;
use Gate;
use Symfony\Component\HttpFoundation\Response;

class PermissionsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
	 
	 
    public function index()
    {
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
         
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
         public function edit(Permission $permission)
         {
        
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
    public function deletepermission($id)
    {
      $permission=Permission::find($id);
      
      $permission->delete();

     return back()->with('success','Permission successfully deleted');
            
    }

}
