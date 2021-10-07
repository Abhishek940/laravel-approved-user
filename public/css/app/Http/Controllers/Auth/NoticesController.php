<?php

namespace App\Http\Controllers\Auth;

use App\notices;
use Illuminate\Http\Request;

class NoticesController extends Controller
{ 
    private $status_code    =        200;

    // ------------------ [ User Detail ] ---------------------
    public function noticeDetail($date1,$date2) {
        $notice               =       array();
        if($notice != "") {
            $notice           =       notices::whereBetween("date", [$date1, $date2]);
            return response()->json(["data" => $notice->get(['notice','date'])]);
        }
    }
}
