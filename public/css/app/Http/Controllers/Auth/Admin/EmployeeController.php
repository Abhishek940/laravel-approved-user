<?php

namespace App\Http\Controllers\Auth\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
class EmployeeController extends Controller
{
	public function __construct()
    {
       $this->middleware('auth:admin');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
         return view('auth.Admin.employee.create-employee');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       
     if($request->ajax())
     {
      $rules = array(
            'name' => ['required', 'string', 'max:255'],
			'mobile' => 'required|digits:10',
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
			'address' => ['required', 'string', 'max:255'],
      );
	  
      $error = Validator::make($request->all(), $rules);
      if($error->fails())
      {
       return response()->json([
        'error'  => $error->errors()->all()
       ]);
      }

      $pre_company_name = $request->pre_company_name;
      $pre_department = $request->pre_department;
	  $from_date = $request->from_date;
	  $to_date = $request->to_date;
	  $des = $request->des;
      for($count = 0; $count < count($first_name); $count++)
      {
       $data = array(
        'pre_company_name' => $pre_company_name[$count],
        'pre_department'  => $pre_department[$count],
		'from_date'  => $from_date[$count],
		'to_date'  => $to_date[$count],
		'des'  => $des[$count],
       );
       $insert_data[] = $data; 
      }

      User::insert($insert_data);
      return response()->json([
       'success'  => 'Data Added successfully.'
      ]);
     }
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
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
