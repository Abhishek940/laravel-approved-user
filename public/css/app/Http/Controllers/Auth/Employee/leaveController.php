<?php
namespace App\Http\Controllers\Auth\Employee;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Applyleave;

class leaveController extends Controller
{
	
	
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $leaves =Applyleave::all();
        return view('auth.employee.leave.index', compact('leaves'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       return view('auth.employee.leave.apply-leave');
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
            'leave_name' => ['required', 'string', 'max:255'],
	    'reason' => ['required', 'string', 'max:255'],
	    'from_date' => ['required'],
	    'to_date' => ['required'],
        ]);
       // applyleave::create($request->all());
          $leave = new Applyleave;
        $leave->leave_name=$request->input('leave_name');
        $leave->reason=$request->input('reason');
        $leave->from_date=$request->input('from_date');
        $leave->to_date =$request->input('to_date'); 
        $leave->leave_applied_for_days =$request->input('leave_applied_for_days'); 
        $leave->save();
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
