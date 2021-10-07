<?php
namespace App\Http\Controllers\Auth\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Training;
use App\User;
use App\notice;
use App\location;
use Validator;
use Excel;
use App\Imports\ImportPermissions;
use DB;
use PDF;
use BenSampo\Embed\Services\Vimeo;
use BenSampo\Embed\Services\YouTube;
use BenSampo\Embed\Rules\EmbeddableUrl;
use Dompdf\Dompdf;
use App\company;
use App\Fieldlocation;
use Illuminate\Support\Facades\Hash;
use App\Providers\AddressValidServiceProvider;
class Trainingcontroller extends Controller
{
	
	public function __construct()
    {
       $this->middleware('auth:admin');
    }
	
      public function training()
	  {
        $users = User::all()->pluck('name', 'id');

      return view('auth.Admin.training.training',compact('users'));

		 
	  }
	  
	  public function submittraining(Request $request)
	  {
		  
       $this->validate($request, [
        'youtube_video_link' => 'required|url|unique:trainings|
                  ',
       'training_ppt' => 'unique:trainings|mimes:pdf,pptx,ppt,docx,jpg,jpeg,png,xlsx,xlx,csv|',
        'training_time' => ['required'],
        'training_assessment' => ['required'],
        'training_validity' => ['required'],
      
        ]);
 
          $training = new Training ;
     
        
        $image_name = $request->training_ppt;
        $training_ppt = $request->file('training_ppt');
        if($training_ppt != '')
        {
            $request->validate([
                'youtube_video_link'    =>  'required',
               // 'training_ppt'     =>  'required',
                 'training_time'     =>  'required',
                   'training_assessment'     =>  'required',
                    'training_validity'     =>  'required',
               
            ]);

            $image_name = $training_ppt->getClientOriginalName();
            $training_ppt->move(public_path('training'), $image_name);
        }
        else
        {
            $request->validate([
               'youtube_video_link' => 'required|url|unique:trainings|
                  ',
              'training_ppt' => 'unique:trainings|mimes:pdf,pptx,ppt,docx,jpg,jpeg,png,xlsx,xlx,csv|',
                 
            ]);
        }

        $form_data = array(
            'youtube_video_link'       =>   $request->youtube_video_link,
            'training_ppt'        =>    $image_name,
           
            'training_time'        =>   $request->training_time,
            'training_assessment'        =>   $request->training_assessment,
             'training_validity'        =>   $request->training_validity,

           // 'image'            =>   $image_name
        );
  
       // Training:whereId($id)->update($form_data);
         // $training->create($form_data);
          $training=Training::create($form_data);
          $training->users()->sync($request->input('users',[]));
       
        return redirect()->route('admin.training.list')->with('success','Training successfully Created !!');
         
    }
 		
	public function traininglist()
	{
		$training = Training::all();
		return view('auth.Admin.training.training-list',compact('training'));
		
	}
	
	public function edittraining(Request $request,$id)
       {

        $users = User::all()->pluck('name', 'id');
        $training=Training::find($id);
         
        return view('auth.Admin.training.edit-training', compact('users', 'training'));
		  
       }
	   public function updateraining(Request $request,$id)
       {
                
             $this->validate($request, [
       // 'youtube_video_link' => 'required|url|unique:trainings| ',
                 
       'youtube_video_link' =>'url|unique:trainings,youtube_video_link,'.$request->id ,      
  
  //'training_ppt' => 'mimes:pdf,pptx,ppt,docx,jpg,jpeg,png,xlsx,xlx,csv|max:4048|unique:trainings,training_ppt',.$id,
     
        ]);
 
                              	     
	 $training =Training::find($id);
			 
         $image_name = $request->training_ppt;
        $training_ppt = $request->file('training_ppt');
        if($training_ppt != '')
        {
            $request->validate([
               
             // 'youtube_video_link' => 'url|unique:trainings,youtube_video_link,'.$request->id
//'youtube_video_link' => 'required|url|unique:trainings|
                 // ',
          'training_ppt' => 'unique:trainings,training_ppt,'.$id

 
            ]);

            $image_name = $training_ppt->getClientOriginalName();
            $training_ppt->move(public_path('training'), $image_name);
        }
        else
        {
            $request->validate([
               'youtube_video_link'    =>  'required',
                'training_ppt'     =>  'required',
                 
            ]);
        }

        $form_data = array(
            'youtube_video_link'       =>   $request->youtube_video_link,
            'training_ppt'        =>    $image_name,
           
            'training_time'        =>   $request->training_time,
            'training_assessment'        =>   $request->training_assessment,
             'training_validity'        =>   $request->training_validity,

           // 'image'            =>   $image_name
        );
  
       // Training:whereId($id)->update($form_data);
          $training->Update($form_data);
        $training->users()->sync($request->input('users', []));
          
 		return redirect()->route('admin.training.list')->with('success','Training successfully Updated !!');
 		
		  
       }
	   
	   public function deletetraining(Request $request,$id)
       {

         $training = Training::find($request->id);
        // $training->delete();
        if ($training->users()->count()) {
        return back()->with('warning','Sorry this Training Cannot be deleteed this Training Assign To Employee ?');
             }
         unlink("training/".$training->training_ppt);
          // $training->delete();  
         Training::where("id", $training->id)->delete();
           return redirect()->route('admin.training.list')->with('success','Training Successfully Deleted !!');
        }
		

		
		public function notice()
	     {
		  return view('auth.Admin.notice.create-notice');
	     }
	  public function submitnotice(Request $request)
	  {
		 $this->validate($request, [
                'notice_title' => ['required', 'string', 'max:255','unique:notices'],
                'notice_reason' => ['required', 'string', 'max:255','unique:notices'],

		 'notice_date' =>  ['required', 'unique:notices'],

            	]);
             //  notice::create($request->all());
                $notice = new notice;
		$notice->notice_title=$request->input('notice_title');
               $notice->notice_reason=$request->input('notice_reason');
               $notice->notice_date=$request->input('notice_date');
               $notice->save();


 		return redirect()->route('admin.notice.list')->with('success','Notice Created Successfully!!');
    }
	 
	 public function noticelist()
	  {
		 $notice = notice::all();
   		 return view('auth.Admin.notice.notice-list',compact('notice'));
      }
	  
	  public function editnotice(Request $request,$id)
       {
          $notice=notice::find($id);
          return view('auth.Admin.notice.edit-notice')->with('notice', $notice);
		  
       }
	   
	     public function updatenotice(Request $request,$id)
         {
         	 $this->validate($request, [
             'notice_title' => 'unique:notices,notice_title,'.$request->id,
              'notice_reason' => 'unique:notices,notice_reason,'.$request->id,
               'notice_date' => 'unique:notices,notice_date,'.$request->id
		
			]);
              
			 $notice =notice::find($id);
			 $notice->notice_title=$request->input('notice_title');
        $notice->notice_reason=$request->input('notice_reason');
       $notice->notice_date=$request->input('notice_date');
       $notice->Update();
           
 		return redirect()->route('admin.notice.list')->with('success','Notice Successfully Updated !!');
		  
       }
	   public function deletenotice($id)
         {
              	 
			 $notice =notice::find($id);
			 $notice->delete();
           
 		return redirect()->route('admin.notice.list')->with('success','Notice Successfully Deleted !!');
		  
       }
   
   public function location()
	     {
		  return view('auth.Admin.location.create-location');
	     }
	  public function submitlocation(Request $request)
	  {
		 

	  	$this->validate($request,[
                 'company_name' => ['string', 'max:255','required','unique:locations'],
			
			'company_address' => 'required|regex:/([- ,\/0-9a-zA-Z]+)/',
			//'radius' => ['string', 'max:255'],
            ]);

        

        location::create($request->all());


 		return redirect()->route('admin.location.list')->with('success',' Location Successfully Inserted !!');  
    }
	 
	 public function locationlist()
	  {
		 $location = location::all();
   		 return view('auth.Admin.location.location-list',compact('location'));
      }
	  
	  public function editlocation(Request $request,$id)
       {
          $location=location::find($id);
          return view('auth.Admin.location.edit-location')->with('location', $location);
		  
       }
	   
	     public function updatelocation(Request $request,$id)
             {
              
              $this->validate($request, [
           
             'company_name' =>'unique:locations,company_name,' .$id
      
          ]);
			 $location =location::find($id);
			 $location->company_name=$request->input('company_name');
			  $location->company_address=$request->input('company_address');
             $location->lat=$request->input('lat');
			 $location->long=$request->input('long');
			 $location->radius=$request->input('radius');
             $location->Update();
           
 		return redirect()->route('admin.location.list')->with('success','Location Successfully Updated !!');
		  
       }
	   public function deletelocation($id)
         {
              	 
			 $location =location::find($id);
			 $location->delete();
           
 		return redirect()->route('admin.location.list')->with('success','Location successfully Deleted !!');
		  
       }

         public function fieldlocation()
	     {
	     	$users = User::all()->pluck('name', 'id');

		  return view('auth.Admin.location.create-field-location',compact('users'));

	     }

	 

       public function submitfieldlocation(Request $request)
	    {
		 

	  	$this->validate($request,[
            'company_name' => ['string', 'max:255','required','unique:fieldlocations'],
			'company_address' => 'required|regex:/([- ,\/0-9a-zA-Z]+)/',
			//'radius' => ['string', 'max:255'],
            ]);

            $user = Fieldlocation::create($request->all());
            $user->users()->sync($request->input('users',[]));
		  

       
 		return redirect()->route('admin.field.location.list')->with('success','Field Location Successfully Inserted !!');  
    }

     public function fieldlocationlist()
	  {
		$location = Fieldlocation::all();
			          
   		 return view('auth.Admin.location.field-location-list',compact('location'));
      }

   // public function edit(Admin $admin)
     public function editfieldlocation(Request $request,Fieldlocation $fieldlocation,$id)
       {
      
        $users = User::all()->pluck('name', 'id');

      //  $fieldlocation->load('users');
         $fieldlocation=Fieldlocation::find($id);

        return view('auth.Admin.location.edit-field-location', compact('users', 'fieldlocation'));
      }
/*
public function update(Request $request, User $user)
{
  $request->validate([
      'email' => 'required|email|unique:users,email,'.$user->id,
  ]);
}
*/
 public function updatefieldlocation(Request $request,Fieldlocation $fieldlocation,$id)
  {

        $this->validate($request, [
           
    // 'email' => 'unique:admins,email,'.$admin->id
    'company_name' =>'unique:fieldlocations,company_name,' .$id
      
      ]);
            
             $fieldlocation =fieldlocation::find($id);
             $fieldlocation->update($request->all());
             $fieldlocation->users()->sync($request->input('users', []));
           
 		return redirect()->route('admin.field.location.list')->with('success','Field Location successfully Updated !!');
		  
       }

	   public function deletefieldlocation($id)
         {
              	 
			 //$fieldlocation =fieldlocation::find($id);
			// $fieldlocation->delete();
			$fieldlocation=Fieldlocation::find($id);
      
            if ($fieldlocation->users()->count()) {
            return back()->with('warning','Sorry this Address Cannot be delete this Address Assign To Employee ?');
             }
           $fieldlocation->delete();

     return back()->with('success','fieldlocation successfully deleted');
           
 		return redirect()->route('admin.field.location.list')->with('success','Field Location Successfully Deleted !!');
		  
       }

   
   
   public function upload()
   {
	   return view('auth.Admin.permissions.upload-bulk-data');
   }
   
   public function import(Request $request)
    {
        $request->validate([
           
            'import_file' => 'required|mimes:xlsx,xlx,csv,txt|max:2048',
        ]);
        Excel::import(new ImportPermissions, request()->file('import_file'));
       // return back()->with('success', 'Permissions imported successfully.');
        return redirect()->route('permissions.index')->with('success','Permission Successfully Created !!');
    }


    public function company()
    {
    	return view('auth.Admin.location.company-demo');
    }

    public function submitcompany(Request $request)
    {
    
   // $company = company::create($request->all());

     company::create($request->all());
    return redirect()->route('admin.create.company');
   }
    
	
}
