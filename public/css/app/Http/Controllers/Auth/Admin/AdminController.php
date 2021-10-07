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
use Image;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\DB;
use App\Rules\MatchOldPassword;
use App\Rules\MaxWordsRule;
use App\Http\Requests\StoreEmployeeRequest;
use Illuminate\Support\Facades\Hash;
use App\Donate_leave;
use App\Negativeleave;
use App\Applyleave;
use App\Training;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\UsersExport;
use App\Exports\EmployeeAttandanceExport;
use PDF;
use Dompdf\Dompdf;
use Illuminate\Support\Str;
use Illuminate\Support\Arr;
use App\Mail\BirthdayMail;
use App\Mail\WelcomeMail;
use App\Mail\CustomBirthdayMail;
use App\Jobs\BirthdayEMail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Password;
use Yajra\Datatables\Datatables;
use Illuminate\Foundation\Auth\ResetsPasswords;
use Illuminate\Auth\Passwords\PasswordBroker;
class AdminController extends Controller
{
	use ResetsPasswords;
    public function __construct()
    {
       $this->middleware('auth:admin');
    }

     public function index()
    {
        //$year = ['January','February','March','April','May','June','July','August','September','October','November','December'];
         $year = ['2020','2021','2022','2023','2024','2025'];
        $user = [];
        foreach ($year as $key => $value) {
            $user[] = User::where(\DB::raw("DATE_FORMAT(joining_date, '%Y')"),$value)->count();
        }
 
    	return view('auth.Admin.dashboard')->with('year',json_encode($year,JSON_NUMERIC_CHECK))->with('user',json_encode($user,JSON_NUMERIC_CHECK));
    }
	
	public function EmpReg()
    {
       // return view('auth.Admin.employee-reg');
	    return view('auth.Admin.employee.create-employee');
    }
	
	public function submitemp(Request $request)
    {
		
        $this->validate($request, [
            'name' => ['required', 'string', 'max:255'],
            'father_name' => ['required', 'string', 'max:255'],
            'mother_name' => ['required', 'string', 'max:255'],
			//'dob' => ['required'],
                        'dob' => 'required|date|before:-18 years',
			'gender' => ['required'],
			'blood_group' => ['required'],
			'marital_Status' => ['required'],
			'pancard_no' => 'required|regex:/([A-Z]){5}([0-9]){4}([A-Z]){1}$/|unique:users|max:10',
			'aadhar_no' => 'required|unique:users|',
			'password' => 'required|string|min:6|confirmed|regex:/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$/',
			'image' => 'required|mimes:jpg,jpeg,png,|max:2048',
			
			'mobile' => 'required|unique:users|digits:10',
			//'alt_contact' => 'digits:10|different:mobile|unique:users',
                        'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
                       // 'alt_email' => 'different:email|unique:users',

                       'address' => ['required', 'string', 'max:255'],
			
			'emergency_contact_no' => 'unique:users|digits:10',
			//'emergency_person_name' => 'required',
			//'emergency_relation' => 'required',
			//'dependent_person_name' => 'required',
			//'dependent_person_relation' => 'required',
			//'dependent_person_age' => 'required',
			
			
			'designation' => ['required'],
			'department' => ['required'],
			'joining_date'=>'required',
			
			'education_title'=>'required',
			'education_board'=>'required',
			'education_subject_name'=>'required',
			'education_grade'=>'required',
				
			//'pre_company_name'  => 'required',
			//'pre_designation' =>'required',
                       //'pre_department'  => 'required',
			
                          'start_date'        => 'date_format:YYYY-MM-DD',
                          'end_date'          => 'date_format:YYY-MM-DD|after:start_date',
                         
			"description"    => "required|max:25", 
			
     ]);
	 
	// dd($request->all());
	  $file = null;
	  //$user=new User;
	  $name = $request->name;
	  $father_name = $request->father_name;
	  $mother_name =$request->mother_name;
	  $dob = $request->dob;
	  $gender = $request->gender;
	  $blood_group = $request->blood_group;
	  $marital_Status = $request->marital_Status;
	  $pancard_no = $request->pancard_no;
	  $aadhar_no = $request->aadhar_no;
	  $password = $request->password;
	 $image = $request->file('image');
      $new_name = rand() . '.' . $image->getClientOriginalExtension();
      $image->move(public_path('images'), $new_name); 
	  $mobile = $request->mobile;
	  $alt_contact = $request->alt_contact;
	  $email = $request->email; 
	  $alt_email = $request->alt_email;
	  $address = $request->address;
	   $emergency_contact_no = $request->emergency_contact_no;
	  $emergency_person_name = $request->emergency_person_name;
	  $emergency_relation = $request->emergency_relation;
	  
	  $dependent_person_name = implode(", ", $request["dependent_person_name"]);
	  $dependent_person_relation = implode(", ", $request["dependent_person_relation"]);
	  $dependent_person_age = implode(", ", $request["dependent_person_age"]);
	  
	  
	  $designation = $request->designation;
	  $department = $request->department;
	  $joining_date = $request->joining_date;
	
		
	  $education_title = implode(", ", $request["education_title"]);
	  $education_board = implode(", ", $request["education_board"]);
	  $education_subject_name = implode(", ", $request["education_subject_name"]);
	  $education_grade = implode(", ", $request["education_grade"]);
	  
	  
	  $pre_company_name = implode(", ", $request["pre_company_name"]);
	  $pre_designation = implode(", ", $request["pre_designation"]);
	  $pre_department = implode(", ", $request["pre_department"]);
	  $from_date = implode(", ", $request["from_date"]);
	  $to_date = implode(", ", $request["to_date"]);
	  $description = implode(", ", $request["description"]);  
     		  
       $data = array(
	   
	     'name' => $name,
		 'father_name'=>$father_name,
		 'mother_name'=>$mother_name,
		 'dob' => $dob,
		 'gender' => $gender,
		 'blood_group'=>$blood_group,
		 'marital_Status'=>$marital_Status,
		 'pancard_no'=>$pancard_no,
		 'aadhar_no'=>$aadhar_no,
		 'password' => bcrypt($request->password),
		 'image' => $new_name,
		 'mobile' => $mobile,
		 'alt_contact' => $alt_contact,
		 'email' => $email,
		 'alt_email'=>$alt_email,
		 'address' => $address,
		
		'emergency_contact_no'=>$emergency_contact_no,
		'emergency_person_name'=>$emergency_person_name,
		'emergency_relation'=>$emergency_relation,
		'dependent_person_name'=>$dependent_person_name,
		'dependent_person_relation'=>$dependent_person_relation,
		 'dependent_person_age'=>$dependent_person_age,
		
		 'designation' => $designation,
		 'department' => $department,
		 'joining_date' => $joining_date,
		
		 
		 'education_title' => $education_title,
		 'education_board' => $education_board,
		 'education_subject_name' => $education_subject_name,
		 'education_grade' => $education_grade,
		  	      
	    'pre_company_name' => $pre_company_name,
		'pre_designation' => $pre_designation,
        'pre_department'  => $pre_department,
		'from_date'  => $from_date,
		'to_date'  => $to_date,
		'description'  => $description, 
		
       );
	   
       $insert_data[] = $data; 
	  
	//dd($insert_data);
       $user= User::insert($insert_data);
       
	
	 
	 $email = $request->get('email');
              $data = ([
              'name' => $request->get('name'),
              'email' => $request->get('email'),
              'mobile' => $request->get('mobile'),
			  'password'=>$request->get('password'),
          ]);
		  
		//Mail::to($email)->send(new WelcomeMail($data));
		 
          return redirect()->route('admin.list.employee')->with('success','Record successfully Added !!');
         }
      

         public function emplist()
          {
            $user=User::all();
            return view('auth.Admin.employee.employee-list')->with('user', $user);
          }
		  public function empbirthdaylist()
          {
            $user=User::all();
            return view('auth.Admin.employee.employee-birthday-list')->with('user', $user);
          }
		  public function sendbirthdaymail($id)
          {
			  $birthday=User::find($id);
              Mail::to($birthday->email)->send(new BirthdayMail($birthday));
			  //$emailJob = (new SendEmailJob())->delay(Carbon::now()->addSeconds(3));
			   //dispatch($birthday);
              return back()->with('success', 'Mail Successfully Sent!');
              return redirect()->route('employee.birthday');
			}

        public function birthdaymail()
            {
                $email = User::all()->pluck('email', 'id');            
                return view('auth.Admin.birthday-wishes',compact('email'));
            }
           
   
         public function sendmail(Request $request,$id)
            {     
              $data=User::find($id);
			  $email = $request->get('email');
			  
              $data = ([
              'name' => $request->get('name'),
              'email' => $request->get('email'),
              'message' => strip_tags($request->get('message')),
			  			  
            ]);
			  Mail::to($email)->send(new CustomBirthdayMail($data));
              return back()->with('success', 'Mail Successfully Sent!');
              return redirect()->route('employee.birthday');

            }
   
      	   public function empreport()
           {
            $user=User::all();
            return view('auth.Admin.employee.emp-report')->with('user', $user);
          }
		 
       public  function empreports(Request $request)
        {
          if($request->ajax())
          {
          if($request->from_date != '' && $request->to_date != '')
          {
            $data = DB::table('users')
            ->whereBetween('joining_date', array($request->from_date, $request->to_date))
            ->get();
          }
        else
         {
         $data = DB::table('users')->orderBy('joining_date', 'desc')->get();
          }
          echo json_encode($data);
         }
        }
	 
	 
	    public function fileExport() 
        {
          ob_end_clean();
        return Excel::download(new UsersExport, 'users-collection.xlsx');
        }  
	 
	   public function get_customer_data()
        {
          //$customer_data = DB::table('users')->get();
	      $customer_data =User::all();
	      // $users = User::get()->sortBy('full_name'); //  works!
          return $customer_data;
        }

    function createPDF()
    {
	   $dompdf = new Dompdf();
       $pdf = \App::make('dompdf.wrapper');
       $pdf->loadHTML($this->convert_customer_data_to_html());
	   //$pdf->setPaper('A4', 'landscape');
	   //$dompdf->set_paper(array(0, 0, 595, 941), 'portrait');
	   $pdf->setPaper([0, 0, 1395.98, 1876.85], 'landscape');
	   
       $canvas = $dompdf ->get_canvas();
       $canvas->page_text(0, 0, "Page {PAGE_NUM} of {PAGE_COUNT}", null, 10, array(0, 0, 0));
       return $pdf->stream();
    }
	 function convert_customer_data_to_html()
    {
     $customer_data = $this->get_customer_data();
     $output = '
     <h3 align="center;font-size:28px">Employee Data</h3>
     <table width="100%" style="border-collapse: collapse; border: 10px;">
      <tr>
	  <!--<th style="border: 1px solid; padding:12px;" width="20%">S.No</th>-->
    <th style="border: 1px solid; padding:12px;" width="20%;font-size:25px">Name</th>
    <th style="border: 1px solid; padding:12px;" width="20%;font-size:25px">Mobile</th>
    <th style="border: 1px solid; padding:12px;" width="15%;font-size:25px">Email Id</th>
	<th style="border: 1px solid; padding:12px;" width="15%;font-size:25px">Gender</th>
    <th style="border: 1px solid; padding:12px;" width="15%;font-size:25px">Designation</th>
	<th style="border: 1px solid; padding:12px;" width="15%;font-size:25px">Department</th>
    <th style="border: 1px solid; padding:12px;" width="20%;font-size:25px">Joining date</th>
	<th style="border: 1px solid; padding:12px;" width="20%;font-size:25px">Address</th>
	<th style="border: 1px solid; padding:12px;" width="28%;font-size:25px">Previous Company</th>
	<th style="border: 1px solid; padding:12px;" width="28%;font-size:25px">Previous Designation</th>
	<th style="border: 1px solid; padding:12px;" width="28%;font-size:25px">Previous Department</th>
	<th style="border: 1px solid; padding:12px;" width="28%;font-size:25px">From Date</th>
	<th style="border: 1px solid; padding:12px;" width="28%;font-size:25px">To Date</th>
	
   </tr>
     ';  
	  //@foreach ($items as $index => $item)
     foreach($customer_data as $index=> $customer)
     {
      $output .= '
      <tr>
	   
	   <!--<td style="border: 1px solid; padding:12px;">{{$index+1}}</td>-->
       <td style="border: 1px solid; padding:12px;width:225px;font-size:30px">'.$customer->name.'</td>
       <td style="border: 1px solid; padding:12px;width:20px;font-size:28px">'.$customer->mobile.'</td>
       <td style="border: 1px solid; padding:12px;font-size:28px">'.$customer->email.'</td>
	   <td style="border: 1px solid; padding:12px;font-size:28px">'.$customer->gender.'</td>
       <td style="border: 1px solid; padding:12px;font-size:28px">'.$customer->designation.'</td>
	   <td style="border: 1px solid; padding:22px;font-size:28px">'.$customer-> department.'</td>
       <td style="border: 1px solid; padding:12px;font-size:28px;width:150px">'.$customer->joining_date.'</td>
	   <td style="border: 1px solid; padding:12px;font-size:28px">'.$customer->address.'</td>
	   <td style="border: 1px solid; padding:12px;font-size:28px">'.$customer->pre_company_name.'</td>
	   <td style="border: 1px solid; padding:12px;font-size:28px">'.$customer->pre_designation.'</td>
	   <td style="border: 1px solid; padding:12px;font-size:28px">'.$customer->pre_department.'</td>
	   <td style="border: 1px solid; padding:32px;width:150px;font-size:28px">'.$customer->from_date.'</td>
	   <td style="border: 1px solid; padding:12px;width:150px;font-size:28px">'.$customer->to_date.'</td>
	   
      </tr>
      ';
     }
     $output .= '</table>';
     return $output;
    }
	
	   public function deleteEmployee(Request $request, $id)
          {
       
          $employee = User::find($request->id);

          unlink("public/images/".$employee->image);
          User::where("id", $employee->id)->delete();
         return redirect()->route('employee.list')->with('success','data successfully deleted !!');
        }
		
         public function editEmployee(Request $request,$id)
          {
          $employee=User::find($id);
          return view('auth.Admin.edit-employee')->with('employee', $employee);
         }
		 
		 public function updateEmployee(Request $request, $id)
         {
            $this->validate($request,[
            'name' => ['string', 'max:255'],
			'mobile' => 'required|digits:10',
            'email' => ['string', 'email', 'max:255'],
            'password' => ['string', 'min:6', 'confirmed'],
			'address' => ['string', 'max:255'],
            ]);
        $employee =User::find($id);
        $employee->name = $request->name;
        $employee->mobile = $request->mobile;
		$employee->email = $request->email;
		$employee->address = $request->address;
        $employee->update();

        return redirect(route('employee.list'))->with('message', 'updated Successfully!!!!');
    }
	
	public function empdetail(Request $request,$id)
     { 
	 //$user = Auth::user(); 		
     //$users=User::find($id);
			
	$user = Auth::user(); //current authenticated user
    $user_id = $user->id; //get the current authenticated user's id
		   
	//$user = User::
	        // $user = DB::table('users')
			 $user = User::join('apply_leaves','apply_leaves.user_id', '=','users.id')
             ->select('apply_leaves.id','apply_leaves.user_id', 
	         'apply_leaves.leave_name','apply_leaves.reason','apply_leaves.from_date','apply_leaves.to_date',
	         'apply_leaves.leave_applied_for_days','apply_leaves.id','apply_leaves.id')
	         ->find($id);
	        $users=User::find($id);	
		  return view('auth.Admin.employee.view-employee-detail', compact('user','users')); 
       }
	   
	  public function empleavelist(Request $request)
         { 
		 $leaves = DB::table('users')
                   ->join('apply_leaves', 'apply_leaves.user_id', '=', 'users.id')
                   ->select('users.name','users.mobile', 'users.email', 'apply_leaves.leave_name','apply_leaves.reason',
				   'apply_leaves.from_date','apply_leaves.to_date','apply_leaves.leave_applied_for_days','apply_leaves.status','apply_leaves.rejected_leave','apply_leaves.reason_for_reject','users.id','apply_leaves.id')
		           ->get(); 
                  return view('auth.Admin.leave.employee-leave-list', compact('leaves'));
                 
         }
		 public function employeeheader(Request $request,$id)
         { 
            //$user = Auth::user(); //current authenticated user
            //$user_id = $user->id;
           // $admin = User::join('apply_leaves', 'apply_leaves.user_id', '=', 'users.id')
                   //->select('apply_leaves.id','apply_leaves.user_id', 
            $admin = Admin::all();
            $roles = Role::all();
            return view('auth.Admin.header', compact('admin','roles'));
         }
		
      public function editemprejectleave(Request $request,$id)
         { 
		   $leaves=Applyleave::find($id);
          return view('auth.Admin.leave.employee-leave-list', compact('leaves'));
         } 
		 
	public function updateemprejectleave(Request $request,$id)
     {
       
	  
        $leave =Applyleave::find($id);
        $leave->status = $request->status;
	$leave->reason_for_reject = $request->reason_for_reject;
	$leave->update();
       	return redirect()->route('admin.employees.leave-list')->with('success','Leave Successfully Updated !!');
     }
	 
	 
	public  function empleavereports(Request $request)
       {
    if($request->ajax())
    {
    if($request->from_date != '' && $request->to_date != '')
    {
	$leaves = DB::table('users')
         ->join('apply_leaves', 'apply_leaves.user_id', '=', 'users.id')
         ->select('users.name','users.mobile', 'users.email', 'apply_leaves.leave_name',
	     'apply_leaves.reason','apply_leaves.from_date','apply_leaves.to_date','apply_leaves.total_days',
		 'users.id','apply_leaves.id')
	      //  ->get(); 
	->whereBetween('time_start', array($request->from_date, $request->to_date))
    ->get();
    }
    else
    {
    $data = DB::table('time_entries')->orderBy('time_start', 'desc')->get();
    }
    echo json_encode($data);
    }
	}
         						
	public function empleavestatus(Request $request)
    { 
	$leaves = DB::table('users')
             ->join('apply_leaves', 'apply_leaves.user_id', '=', 'users.id')
             ->select('users.name','users.mobile', 'users.email', 'apply_leaves.leave_name','apply_leaves.reason',
			 'apply_leaves.from_date','apply_leaves.to_date','apply_leaves.leave_applied_for_days','apply_leaves.status','apply_leaves.rejected_leave',
			 'apply_leaves.reason_for_reject','users.id','apply_leaves.id')
	         //->where('apply_leaves.status', 1)
			 ->get(); 
	 	  return view('auth.Admin.leave.emp-leave-status', compact('leaves'));
    }
	
	
	public function applyleavestatus(Request $request)
    {
        $leave = Applyleave::find($request->id);
        $leave->status = $request->status;
        $leave->save();
        return response()->json(['success'=>'Status change successfully.']);
    }
				
	  public function empviewleave(Request $request,$id)
       { 
		    			
			$user = Auth::user(); //current authenticated user
            $user_id = $user->id; //get the current authenticated user's id
		    $leaves = Applyleave::join('users', 'apply_leaves.user_id', '=', 'users.id')
                  ->select('users.name','users.mobile', 'users.email','apply_leaves.id','apply_leaves.user_id', 
				  'apply_leaves.leave_name','apply_leaves.reason','apply_leaves.from_date','apply_leaves.to_date',
				  'apply_leaves.leave_applied_for_days','users.id','apply_leaves.id')
		           ->find($id);
		return view('auth.Admin.leave.view-employee-leave-list', compact('leaves')); 
       }
		 public function bulk_actions(Request $request)
    {
        if ($request->ajax()) {
            $items = $request->items;
            switch ($request->work) {
                case "status":
                    foreach ($items as $item) {
                        $leave         = Applyleave::findOrFail($item);
                        $leave->status = $request->value;
                        $leave->save();
                    }
                    break;

                case "delete":
                    Applyleave::destroy($request->items);
                    break;
            }
        }
    }

 public function updatebulkleavestatus(Request $request)
    {
         
    /*  //  $post_data = Input::get('checkbox');
      //  $post_data->checkbox = $request->checkbox;

        if(is_array($request))
        {
           // foreach ($request as $checkbox)
            foreach ($request->checkbox as $checkbox) 
                $leave         = Applyleave::find($checkbox);
                $leave->status = $request->status;
            {
                   // $leave        = Applyleave::find($is_checked);

               
                    $leave->save();
            }
        }

    return response()->json(['success'=>'Status change successfully.']);
  //  return redirect()->route('admin.employees.leave-list')->with('success','leave successfully Updated !!');

        if ($request->ajax()) {
            if (!empty($request->checkbox)) {
                foreach ($request->checkbox as $checkbox) {
                   $leave         = Applyleave::find($checkbox);
                   $leave->status = $request->status;
                    $leave->save();
                  // dd($checkbox);
                }
                return response()->json(['success'=>'Status change successfully.']);
               // return redirect()->route('admin.employees.leave-list')->with('success','leave successfully Updated !!');
            }
            else {
                return response()->json(['warning'=>'Error.']);
            }
        }
     */
       
    
       dd($request->all());
    }  
	  public function deleteempleave($id)
       {
            Applyleave::where('id',$id)->delete();
            return redirect()->route('admin.employees.leave-list')->with('success','leave successfully deleted !!');
       }
	
       public function changePassword()
		{
			return view ('auth.Admin.change-password');
		}	

       	public function UpdatePassword(Request $request)
		{
		
		 $request->validate([
            'current_password' => ['required', new MatchOldPassword],
           // 'new_password' => 'required|different:current_password',
             'new_password' => 'required|different:current_password|string|min:6|regex:/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$/',
            'new_confirm_password' => ['same:new_password'],
        ]);
   
        Admin::find(auth()->user()->id)->update(['password'=> Hash::make($request->new_password)]);
   
       // dd('Password change successfully.');
	     return redirect(route('admin.change.password'))->with('success', 'password updated Successfully!!!!');
        }
		
           public function forgetPassword()
		   {
			return view('auth.Admin.forget-password');
	        }
	 

	public function TotalAttandance(Request $request)
    { 
	$employee = DB::table('users')
    ->join('time_entries', 'time_entries.user_id', '=', 'users.id')
	->join('time_entry_users','time_entry_users.user_id', '=', 'users.id')
    ->select('users.name', 'time_entries.time_start', 'time_entries.time_end','users.id','time_entries.id',
	'time_entry_users.id','time_entry_users.location_in','time_entry_users.location_out')
	->where('time_entries.deleted_at', NULL)
    ->get(); 
	//$employee = TimeEntry::withTrashed()->get();  // Restore softdeleted data
    return view('auth.Admin.view-attandance', compact('employee'));
             
    }
	
	public function Attandancelist(Request $request)
    { 
	  $employee = DB::table('users')
     ->join('time_entries', 'time_entries.user_id', '=', 'users.id')
	 ->select('users.name','time_entries.time_start','time_entries.time_end','time_entries.user_id','users.id',
	 'time_entries.id')->where('time_entries.deleted_at', NULL)
     ->get(); 
	//$employee = TimeEntry::withTrashed()->get();  // Restore softdeleted data
    return view('auth.Admin.attandance-list', compact('employee'));
             
    }
	
	public function searchattandance(Request $request)
    {
     
      if(request()->ajax())
      {
        
    if(!empty($request->name))
       {

    $data = DB::table('time_entries')
              ->join('users', 'users.id', '=', 'time_entries.user_id')
              ->select('time_entries.id','time_entries.user_id','time_entries.time_start','time_entries.time_end','users.name')
              ->where('time_entries.user_id', $request->name)
              ->where('time_entries.time_start', $request->month);               
    }
    else
    {
    $data = DB::table('time_entries')
               ->join('users', 'users.id', '=', 'time_entries.user_id')
               ->select('time_entries.id','time_entries.user_id','time_entries.time_start','time_entries.time_end','users.id',
               'users.name')
               ->get();       
    }
        
    $datatable = DataTables::of($data)->make(true);
    return $datatable;
    return view('auth.Admin.attandance-list', compact('data'));
    }
 
    }

    public function get_employee_attandance()
    {
      
      $employee_data = DB::table('time_entries')
              ->join('users', 'users.id', '=', 'time_entries.user_id')
              ->select('time_entries.id','time_entries.user_id','time_entries.time_start','time_entries.time_end','users.name')
             ->get();
              // ->where('time_entries.user_id', $request->name)
              //->where('time_entries.time_start', $request->month);  

      return $employee_data;
    }

    function downloadattandancepdf()
    {
     $pdf = \App::make('dompdf.wrapper');
     $pdf->loadHTML($this->convert_employee_attandance_data_to_html());
     return $pdf->stream();
    }

    function convert_employee_attandance_data_to_html()
    {
     $employee_data = $this->get_employee_attandance();
     $output = '
     <h3 align="center">Employee Attandance list</h3>
     <table width="100%" style="border-collapse: collapse; border: 0px;">
      <tr>
    <th style="border: 1px solid; padding:12px;" width="15%">Name</th>
    <th style="border: 1px solid; padding:12px;" width="15%">Start Time</th>
    <th style="border: 1px solid; padding:12px;" width="15%">End Time</th>
    
   </tr>
     ';  
     foreach($employee_data as $employee)
     {
      $output .= '
      <tr>
     
       <td style="border: 1px solid; padding:12px;">'.$employee->name.'</td>
       <td style="border: 1px solid; padding:12px;">'.$employee->time_start.'</td>
       <td style="border: 1px solid; padding:12px;">'.$employee->time_end.'</td>
       
      </tr>
      ';
     }
     $output .= '</table>';
     return $output;
    }

   
    public function get_employee_attandances()
    {
      
      $employee_data = DB::table('time_entries')
              ->join('users', 'users.id', '=', 'time_entries.user_id')
              ->select('time_entries.id','time_entries.user_id','time_entries.time_start','time_entries.time_end','users.name')
             ->get();
              // ->where('time_entries.user_id', $request->name)
              //->where('time_entries.time_start', $request->month);  

      return $employee_data;
    }
   
    function downloadattandanceexcel()
    {
         ob_end_clean();
        return Excel::download(new EmployeeAttandanceExport, 'EmployeeAttandance.xlsx');
     }
    
   
   

	public function deleteAttandance($id)
     {
    $attandance=TimeEntry::find($id);
	//$attandance=TimeEntry::find($timeEntrieUsers->id)->delete()
    $attandance->delete();
    return redirect()->route('admin.view-attandance')->with('success','data successfully deleted !!');
    }
		             
	public function Attandancelocation(Request $request)
	 {
    $employee = DB::table('users')
    ->join('time_entry_users','time_entry_users.user_id', '=', 'users.id')
    ->select('users.name','time_entry_users.location_in','time_entry_users.created_at','time_entry_users.id','time_entry_users.image')
    ->get();
    return view('auth.Admin.view-attandance-location', compact('employee'));
    }
		  
	  public function deletelocation($id)
        {
            $location=TimeEntryUser::find($id);
            $location->delete();
			
            return redirect()->route('admin.view-attandance-location')->with('success','data successfully deleted !!');
          }
		  
	public function leavecalender()
    {
        $leaves =leave::all();
        return view('auth.Admin.leave.leave-calender', compact('leaves'));
    }
	
	public function emptotalleave()
    {
         return view('auth.Admin.leavetype.create-leave-type');
    }
	public function leavetype()
    {
         return view('auth.Admin.leavetype.create-leave-type');
    }
	public function Submitleavetype(Request $request)
    {
           $this->validate($request, [
            'leave_name' => ['required', 'string', 'max:255','unique:leave_types'],
			]);

         //leaveType::create($request->all());
		  $leavetype=new leaveType;
          $leavetype->leave_name= $request->leave_name;
          $leavetype->no_of_days= $request->no_of_days;
          $leavetype->save();		  

 		return redirect()->route('admin.list-leave-type')->with('success',' leave successfully Inserted !!');  
    }
	public function listleavetype()
    {
        $leaves =leaveType::all();
        return view('auth.Admin.leavetype.list-leave-type', compact('leaves'));
    }
	   public function deleteleave($id)
        {
          $leave=leaveType::find($id);
	      $leave->delete();
          return redirect()->route('admin.list-leave-type')->with('success','data successfully deleted !!');
         }
	   public function editleave(Request $request,$id)
        {
           $leave=leaveType::find($id);
           return view('auth.Admin.leavetype.edit-leave')->with('leave', $leave);
         }
		 
		  
		 
		 public function updateleave(Request $request, $id)
         {
            $this->validate($request,[
           		 'leave_name' => 'unique:leave_types,leave_name,'.$request->id
			]);
           $leave =leaveType::find($id);
           $leave->leave_name = $request->leave_name;
		   $leave->no_of_days = $request->no_of_days;
           $leave->update();

           return redirect(route('admin.list-leave-type'))->with('message', 'updated Successfully!!!!');
         }
	public function donateleavelist()
    {
        $leaves =Donate_leave::all();
        return view('auth.Admin.leave.donate-leave-list', compact('leaves'));
    }
	public function updateStatus(Request $request)
    {
        $leave = Donate_leave::findOrFail($request->id);
        $leave->status = $request->status;
        $leave->save();
        return response()->json(['success'=>'Status change successfully.']);
    }
	  public function deletedonatelist(Request $request,$id)
       {
        $leave = Donate_leave::findOrFail($request->id);
         Donate_leave::where('id',$id)->delete();
        return redirect()->route('admin.donate.leave-list')->with('success','leave successfully deleted !!');
       }
	  
	
	public function negativeleavelist(Request $request)
    {		
         $leaves = Negativeleave::all();
         return view('auth.Admin.leave.negative-leave-list', compact('leaves'));
    }
	public function allownegativeleave(Request $request)
    {
        $leave = Negativeleave::find($request->id);
        $leave->status = $request->status;
        $leave->save();
        return response()->json(['success'=>'Status change successfully.']);
    }
	   public function training()
		{
		  return view('auth.Admin.training.training');
		}

       public function adminroles(Admin $admin)
       {
       // abort_if(Gate::denies('user_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        //$roles = Role::all()->pluck('title', 'id');

       // $admin->load('roles');
	   $data = DB::table('admin_roles')
       ->join('roles', 'roles.id', '=', 'admin_roles.id')
       ->join('admins', 'admins.id', '=', 'roles.id')
       ->select('admins.name', 'roles.title')
       ->get();
    // return view('join_table', compact('data'));
    //}

        return view('auth.Admin.sidebar', compact('data'));
      }		
}