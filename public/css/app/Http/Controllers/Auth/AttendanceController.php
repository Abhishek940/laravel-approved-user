<?php

namespace App\Http\Controllers\Auth;
use App\Http\Controllers\Controller;
use App\attendance;
use Illuminate\Http\Request;

class AttendanceController extends Controller
{
     private $status_code    =        200;

    public function attendance($email) {
        $attendance               =       array();
        if($email != "") {
            $attendance           =       attendance::where("email", $email)->orderBy('id', 'DESC')->first();
            return $attendance;
        }
    }

    public function attendanceAdd(Request $request) {
        $addAttendance = array(
            "email"              =>          $request->email,
            "date"               =>          $request->date,
            "checkintime"        =>          $request->checkintime,
            "checkinlocation"    =>          $request->checkinlocation,
            "image"              =>          $request->image,
            "chekouttime"        =>          $request->chekouttime,
            "totaltime"          =>          $request->totaltime,
        );

        $checkin_status    =   attendance::where("email", $request->email)->where("date", $request->date)->first();

        if(is_null($checkin_status)) {
        $attendance = attendance::create($addAttendance);
        if(!is_null($attendance)) {
                return response()->json(["status" => $this->status_code, "success" => true, "message" => "OK"]);
            }

            else {
                return response()->json(["status" => "failed", "success" => false, "message" => "Failed to add attendance"]);
            }
        }
        else {
            return response()->json(["status" => "failed", "success" => false, "message" => "Already"]);
        }
    }

    public function attendanceUpdate(Request $request) {
        $updateAttendance = array(
            "email"              =>          $request->email,
            "date"               =>          $request->date,
            "chekouttime"        =>          $request->chekouttime,
            "totaltime"          =>          $request->totaltime,
        );

        $checkout_status    =   attendance::where("email", $request->email)->where("date", $request->date)->where("chekouttime", null)->first();

        if(!is_null($checkout_status)) {
        $attendance = attendance::where("email", $request->email)->where("date", $request->date)->where("chekouttime", null)->update($updateAttendance);
        if(!is_null($attendance)) {
                return response()->json(["status" => $this->status_code, "success" => true, "message" => "OK"]);
            }

            else {
                return response()->json(["status" => "failed", "success" => false, "message" => "Failed to update attendance"]);
            }
        }
        else {
            return response()->json(["status" => "failed", "success" => false, "message" => "Already"]);
        }
    }
}
