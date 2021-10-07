<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Validator;
class UserController extends Controller
{
 
private $status_code    =        200;

    public function userLogin(Request $request) {

        $validator          =       Validator::make($request->all(),
            [
                "email"             =>          "required|email",
                "password"          =>          "required"
            ]
        );

        if($validator->fails()) {
            return response()->json(["status" => "failed", "validation_error" => $validator->errors()]);
        }


        // check if entered email exists in db
        $email_status       =       User::where("email", $request->email)->first();


        // if email exists then we will check password for the same email

        if(!is_null($email_status)) {
            $password_status    =   User::where("email", $request->email)->where("password", $request->password)->first();

            // if password is correct
            if(!is_null($password_status)) {
                $user           =       $this->userDetail($request->email);

                return response()->json(["status" => $this->status_code, "success" => true, "message" => "OK"]);
            }

            else {
                return response()->json(["status" => "failed", "success" => false, "message" => "Unable to login. Incorrect password."]);
            }
        }

        else {
            return response()->json(["status" => "failed", "success" => false, "message" => "Unable to login. Email doesn't exist."]);
        }
    }

    // ------------------ [ User Detail ] ---------------------
    public function userDetail($email) {
        $user               =       array();
        if($email != "") {
            $user           =       User::where("email", $email)->first();
            return $user;
        }
    }

    // ------------- [ Edit Personal Detail ] ----------------
    public function editPD(Request $request) {
        $update = User::where("email", $request->email)->update([
            'prefix' => $request->prefix,
            'name' => $request->name,
            'father_name' => $request->father_name,
            'mother_name' => $request->mother_name,
            'dob' => $request->dob,
            'marital_status' => $request->marital_status,
            'blood_group' => $request->blood_group,
            'gender' => $request->gender,
            'mobile' => $request->mobile,
            'alt_contact' => $request->alt_contact,
            'alt_email' => $request->alt_email,
            'emergency_contact_no' => $request->emg_contact,
            'emergency_person_name' => $request->emg_person,
            'emergency_relation' => $request->emg_relation,
            'dependent_person_name' => $request->dep_person,
            'dependent_person_relation' => $request->dep_relation,
            'dependent_person_age' => $request->dep_relation
        ]);
        if(!is_null($update)) {
                return response()->json(["status" => $this->status_code, "success" => true, "message" => "OK", "data"=> $request->dob]);
            }

            else {
                return response()->json(["status" => "failed", "success" => false, "message" => "Failed to update user details"]);
            }
    }

    // ------------------ [ Edit Location ] ---------------------
    public function editLocation(Request $request) {
        $update = User::where("email", $request->email)->update([
            'address' => $request->comm_address,
        ]);
        if(!is_null($update)) {
                return response()->json(["status" => $this->status_code, "success" => true, "message" => "OK"]);
            }

            else {
                return response()->json(["status" => "failed", "success" => false, "message" => "Failed to update user locations"]);
            }
    }

    // --------------- [ National ID Details ] ------------------
    public function editNID(Request $request) {
        $update = User::where("email", $request->email)->update([
            'aadhar_no' => $request->aadhar_no,
            'pancard_no' => $request->pancard_no,
        ]);
        if(!is_null($update)) {
                return response()->json(["status" => $this->status_code, "success" => true, "message" => "OK"]);
            }

            else {
                return response()->json(["status" => "failed", "success" => false, "message" => "Failed to update user national ID details"]);
            }
    }

    // ------------ [ Educational Qualification ] ---------------
    public function editQualification(Request $request) {
        $update = User::where("email", $request->email)->update([
            'education_title' => $request->education_title,
            'education_board' => $request->education_board,
            'education_subject_name' => $request->education_subject_name,
            'education_grade' => $request->education_grade,
        ]);
        if(!is_null($update)) {
                return response()->json(["status" => $this->status_code, "success" => true, "message" => "OK"]);
            }

            else {
                return response()->json(["status" => "failed", "success" => false, "message" => "Failed to update qualification"]);
            }
    }

    // ------------ [ Edit Exprerience ] ---------------
    public function editExperience(Request $request) {
        $update = User::where("email", $request->email)->update([
            'pre_company_name' => $request->pre_company_name,
            'pre_designation' => $request->pre_designation,
            'pre_department' => $request->pre_department,
            'from_date' => $request->from_date,
            'to_date' => $request->to_date,
            'description' => $request->description,
        ]);
        if(!is_null($update)) {
                return response()->json(["status" => $this->status_code, "success" => true, "message" => "OK"]);
            }

            else {
                return response()->json(["status" => "failed", "success" => false, "message" => "Failed to update experience details"]);
            }
    }

    // ------------------ [ Birthdays ] ---------------------
    public function birthdays($date) {
        $user               =       array();
        if($date != "") {
            $user           =       User::orWhere("dob", "LIKE", '%'.$date.'%');
            return response()->json(["data" => $user->get(['id','name'])]);
        }
    }

    // ------------------ [ Work Anniversaries ] ---------------------
    public function anniversaries($date) {
        $user               =       array();
        if($date != "") {
            $user           =       User::orWhere("joining_date", "LIKE", '%'.$date.'%');
            return response()->json(["data" => $user->get(['id','name'])]);
        }
    }

    // ------------------ [ Directory ] ---------------------
    public function directoryid($id) {
        $user               =       array();
        if($id != "") {
            $user           =       User::orWhere('user_id', $id);
            return response()->json(["data" => $user->get(['user_id','name','mobile','email'])]);
        }
    }

    public function directoryname($name) {
        $user               =       array();
        if($name != "") {
            $user           =       User::orWhere('name', $name);
            return response()->json(["data" => $user->get(['id','name','mobile','email'])]);
        }
    } 
}
