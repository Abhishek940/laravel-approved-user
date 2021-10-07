<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class leaveType extends Model
{
    protected $table = 'leave_types';

        protected $fillable = [
            'leave_name','number_of_days',
        ];
}
