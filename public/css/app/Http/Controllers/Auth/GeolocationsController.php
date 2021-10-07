<?php

namespace App\Http\Controllers\Auth;

use App\geolocations;
use Illuminate\Http\Request;

class GeolocationsController extends Controller
{
    private $status_code    =        200;

    // ------------------ [ Geolocation ] ---------------------
    public function geolocations($company_id) {
        $geolocations               =       array();
        if($geolocations != "") {
            $geolocations           =       geolocations::where("company_id", $company_id);
            return response()->json(["data" => $geolocations->get(['lat','lng','radius','id'])]);
        }
    }
}
