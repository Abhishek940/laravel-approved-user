<?php

namespace App\Http\Controllers\Auth\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\leave;
use Calendar;
use Excel;
use App\Imports\leaveImport;
use App\Imports\leaveTypeImport;
class leaveController extends Controller
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
        $leaves =leave::all();
        return view('auth.Admin.leave.index', compact('leaves'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('auth.Admin.leave.create-leave');
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
              'name' => ['required', 'string', 'max:255','unique:leaves'],
              'leave_date' => ['required','unique:leaves'],
        ]);
        leave::create($request->all());
       	return redirect()->route('leave.index')->with('success','Leave Successfully Created !!');
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
    public function edit($id)
    {
      $leave=leave::find($id);
      return view('auth.Admin.leave.edit-leave')->with('leave', $leave);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

   public function update(Request $request, leave $leave)
        {
            $this->validate($request,[
           'name' => 'unique:leaves,name,'.$leave->id,
            'leave_date' => 'unique:leaves,leave_date,'.$leave->id


            ]);
            
        $leave->update($request->all());
        return redirect()->route('leave.index')->with('success','Leave Successfully Updated !!');
    
        }

  
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

    $leave=leave::find($id);
    $leave->delete();
			
   return redirect()->route('leave.index')->with('success','Leave Successfully Created !!');
    }


    public function upload()
    {
       return view('auth.Admin.leave.upload-bulk-leave');
    }
   
   public function import(Request $request)
    {
        $request->validate([
           
            'import_file' => 'required|mimes:xlsx,xlx,csv|max:2048',
        ]);
        Excel::import(new leaveImport, request()->file('import_file'));
        return back()->with('success', 'Permissions imported successfully.');
    }

    public function uploadbulkleave()
    {
       return view('auth.Admin.leavetype.upload-bulk-leave-type');
    }

    public function importbulkleave(Request $request)
    {
        $request->validate([
           
            'import_file' => 'required|mimes:xlsx,xlx,csv|max:2048',
        ]);
        Excel::import(new leaveTypeImport, request()->file('import_file'));
        return back()->with('success', 'leave imported successfully.');
    }
	
}
