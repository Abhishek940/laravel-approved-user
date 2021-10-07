<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DynamicField;
use Validator;
use App\ProductStock;
use DataTables;
use App\User;
use Illuminate\Support\Facades\Input;
use Redirect;

class DynamicFieldController extends Controller
{
    function index()
    {
    
	 return view('dynamic_field');
    }

    function insert(Request $request)
    {
     if($request->ajax())
     {
      $rules = array(
       'first_name.*'  => 'required',
       'last_name.*'  => 'required'
      );
      $error = Validator::make($request->all(), $rules);
      if($error->fails())
      {
       return response()->json([
        'error'  => $error->errors()->all()
       ]);
      }
      
      $first_name = $request->first_name;
      $last_name = $request->last_name;
	  // $department=$request->department;
      for($count = 0; $count < count($first_name); $count++)
      {
       $data = array(
        'first_name' => $first_name[$count],
        'last_name'  => $last_name[$count],
		//'department'=>  $department,
		
       );
       $insert_data[] = $data; 
      }

      DynamicField::insert($insert_data);
      return response()->json([
       'success'  => 'Data Added successfully.'
      ]);
     }
    }
	
	public function addMore()
    {
       return view('auth.Admin.employee.add-mores');
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function addMorePost(Request $request)
    {
        $request->validate([
            'addmore.*.name' => 'required',
            'addmore.*.qty' => 'required',
            'addmore.*.price' => 'required',
        ]);
    
        foreach ($request->addmore as $key => $value) {
            ProductStock::create($value);
        }
    
        return back()->with('success', 'Record Created Successfully.');
    }
	public function datatable()
    {
        return view('datatable');
    }
	public function getPosts()
    {
        return \DataTables::of(User::query())->make(true);
    }
	
	
}
