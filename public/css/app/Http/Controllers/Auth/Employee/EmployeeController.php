<?php
namespace App\Http\Controllers\Auth\Employee;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator,Redirect,Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Session;
Use App\User;
use App\TimeEntry;
use App\TimeEntryUser;
use App\Services\ReportService;
use Carbon;
use App\Rules\MatchOldPassword;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use App\Applyleave;
use App\leaveType;
use App\leave;
use App\notice;
use Calendar;
use App\Donate_leave;
use App\Negativeleave;
class EmployeeController extends Controller
{

    public function index()
     {
        return view('auth.employee.dashboard');
     }
		 
	 	public function makeAttandance()
	    {
		return view('auth.employee.make-attandance');
        }
		
		public function changePassword()
		{
			return view ('auth.employee.change-password');
		}	

	  public function UpdatePassword(Request $request)
		{
		
		 $request->validate([
                 'current_password' => ['required', new MatchOldPassword],
                 'new_password' => ['required'],
                'new_confirm_password' => ['same:new_password'],
           ]);
   
        User::find(auth()->user()->id)->update(['password'=> Hash::make($request->new_password)]);
   
       // dd('Password change successfully.');
	     return redirect(route('employee.change.password'))->with('success', 'password updated Successfully!!!!');
    }
	
      public function TotalAttandance()
      {
		  
        $id = Auth::user()->id;
		$employee = DB::table('time_entries')->where('user_id','=', $id)->where('deleted_at',NULL)->get();
     //$employee = TimeEntryUser::with('timeEntries')->where('user_id','=', $id)->get(); //Fetch relations data//
		 return view('auth.employee.view-attandance')->with('employee',$employee);
         }
            
        
	   public function location(Request $request)
	   {
          $request->validate([
            'location_in' => ['required'],
            'image' => ['required'],
            
        ]);
		   //Auth::user()->research
		   $timeEntries = TimeEntry::whereHas('user', function ($query) {
                $query->where('id', auth()->id());
            })
            ->first();
			
			$image = $request->input('image');	
			
                        $user = new TimeEntryUser;
			$user->user_id=$request->input('user_id');
			$timeEntries = $timeEntries->timeEntrieUsers();
                        $user->location_in = $request->input('location_in');
			$user->location_out = 'Bihar';
			$user->latlong = $request->input('latlong');
			  
			$folderPath = "public/uploads/";
  
            $image_parts = explode(";base64,", $image);
            $image_type_aux = explode("image/", $image_parts[0]);
            $image_type = $image_type_aux[1];
  
            $image_base64 = base64_decode($image_parts[1]);
            $fileName = uniqid() . '.png';
  
            $file = $folderPath . $fileName;
            file_put_contents($file, $image_base64);
	   $user->image = $folderPath . $fileName;
	   //$timeEntries = $timeEntries->timeEntrieUsers()->save($user);
	   $timeEntries->save($user);
	  return redirect()->route('employee.view-attandance')->with('success',' successfully Inserted.');
	   }
	   
	   
	    public function showlocation(Request $request)
	   {
		 
	   $id = Auth::user()->id;
           $location = DB::table('time_entry_users')->where('user_id','=', $id)->get();
           return view ('auth.employee.show-location')->with('location',$location);
		                
	   }
	   
	   public function applyleave()
       {
		$leave=leaveType::all();
        return view('auth.employee.leave.apply-leave',compact('leave'));
       } 
	 
	public function submitleave(Request $request)
    {
        $this->validate($request, [
            'leave_name' => ['required', 'string', 'max:255'],
	    'reason' => ['required', 'string', 'max:255'],
	    'from_date' => ['date','required'],
	    'to_date' => 'required|date|after:from_date'
        ]);
        $leave=new Applyleave;
	$leave->user_id=$request->input('user_id');
	$leave->leave_name=$request->input('leave_name');
	$leave->reason=$request->input('reason');
        $leave->from_date = $request->input('from_date');
	$leave->to_date = $request->input('to_date');
	$leave->leave_applied_for_days = $request->input('leave_applied_for_days');
	$leave->status = 0;
	$leave->rejected_leave = 0;
	$leave->reason_for_reject = 'Reasons ';
	$leave->save();
       return redirect()->route('employee.leave-list')->with('success','Leave Successfully Created!!');
    }
	public function listleavetype()
    {
        $leaves =leaveType::all();
        return view('auth.Admin.leavetype.list-leave-type', compact('leaves'));
    }
	
	
   public function leavelist(Request $request)
    {
		 $id = Auth::user()->id;
         $leaves = DB::table('apply_leaves')
                    ->select('id','leave_name', 'reason', 'from_date','to_date','leave_applied_for_days','status',
					'rejected_leave','reason_for_reject')
                   ->where('user_id','=', $id)->get();
                   //->sum('total_days');
         		
		 //$leaves = DB::table('apply_leaves')->where('user_id','=', $id)->get();
		 //dd($leaves);
        //return view ('auth.employee.leave.leave-list')->with('leaves',$leaves);
       // $leaves =Applyleave::all();
        return view('auth.employee.leave.leave-list', compact('leaves'));
	    //return view('auth.employee.leave.leave-list',['leaves'=>$leaves]);
     }
	
	 public function editleave($id)
     {
       $leave=Applyleave::find($id);
      return view('auth.employee.leave.edit-leave')->with('leave', $leave);
     }
    
	public function updateemployeeleave(Request $request,$id)
     {
       
	   $this->validate($request, [
            'leave_name' => ['required', 'string', 'max:255'],
			'reason' => ['required'],
			'from_date' => ['required'],
			'to_date' => ['required'],
			
        ]);
        $leave =Applyleave::find($id);
        $leave->leave_name = $request->leave_name;
        $leave->reason = $request->reason;
		$leave->from_date=$request->from_date;
		$leave->to_date=$request->to_date;
		$leave->update();
       	return redirect()->route('employee.leave-list')->with('success','leave successfully Updated !!');
     }
    
     public function deleteleave($id)
      {
        Applyleave::where('id',$id)->delete();
       return redirect()->route('employee.leave-list')->with('success','leave successfully deleted !!');
    }
	
	public function leavecalender()
    {
        $leaves =leave::all();
        return view('auth.employee.leave.leave-calender', compact('leaves'));
    }
	public function applyleavecalender()
    {
        $leave =Applyleave::all();
        return view('auth.employee.leave.apply-leave-calender', compact('leave'));
    }
	
	
	public function donateleave()
        {
	$leave=leaveType::all();
	$user=User::all();
    return view('auth.employee.leave.donate-leave',compact('leave','user'));
    } 
	public function submitdonateleave(Request $request)
    {
        $this->validate($request, [
            'leave_name' => ['required', 'string', 'max:255'],
			 'donate_for' => ['required', 'string', 'max:255'],
			'reason' => ['required', 'string', 'max:255'],
			'days' => ['required'],
			
        ]);
        $leave=new donate_leave;
		$leave->user_id=$request->input('user_id');
		$leave->leave_name=$request->input('leave_name');
		$leave->donate_for=$request->input('donate_for');
		$leave->reason=$request->input('reason');
        $leave->days = $request->input('days');
		$leave->status ='0';
		$leave->save();
       return redirect()->route('employee.donate.leave-list')->with('success','leave successfully Created!!');
    }
	
	public function donateleavelist()
    {
		 $id = Auth::user()->id;
         $leaves = DB::table('donate_leaves')->where('user_id','=', $id)->get();
        // $leaves =Donate_leave::all();
        return view('auth.employee.leave.donate-leave-list', compact('leaves'));
    }
	public function applynegativeleave()
     {
		 return view('auth.employee.leave.apply-negative-leave');
    } 
	public function submitnegativeleave(Request $request)
    {
        $this->validate($request, [
            'leave_name' => ['required', 'string', 'max:255'],
			 'reason' => ['required'],
			'from_date' => ['required'],
			'to_date' => ['required'],
			
        ]);
        $leave=new Negativeleave;
		$leave->user_id=$request->input('user_id');
		$leave->leave_name=$request->input('leave_name');
		$leave->reason=$request->input('reason');
        $leave->from_date = $request->input('from_date');
		$leave->to_date = $request->input('to_date');
		$leave->status ='0';
		$leave->save();
       return redirect()->route('employee.negative.leave.list')->with('success','leave successfully Created!!');
    }
	public function negativeleavelist(Request $request)
    {
		 $id = Auth::user()->id;
         //$leaves = DB::table('apply_leaves')->where('user_id','=', $id)->where('leave_name','Negative leave')->get();
         //return view ('auth.employee.leave.negative-leave-list')->with('leaves',$leaves);
         $leaves = Negativeleave::all();
         return view('auth.employee.leave.negative-leave-list', compact('leaves'));
    }

    public function noticelist()
     {
       $notice=Notice::all();
       return view('auth.employee.notice.notice-list',compact('notice'));
    } 

    public function fixedleavelist()
     {
       $leaves=Leave::all();
       return view('auth.employee.leave.fixed-leave-list',compact('leaves'));
    } 


}
