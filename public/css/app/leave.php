<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class leave extends Model
{
    protected $table = 'leaves';

        protected $fillable = [
            'name','leave_date',
        ];
}
