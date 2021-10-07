<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
class attendance extends Model
{
   // use HasFactory;
    public $table = "attendances";

    protected $fillable = [
        'email',
        'date',
        'checkintime',
        'checkinlocation',
        'image',
        'chekouttime',
        'totaltime',
    ];
}
