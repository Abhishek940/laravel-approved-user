<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class company extends Model
{
    protected $fillable = [
        'name',
        'address_address',
        'address_latitude',
        'address_longitude',
    ];
}
