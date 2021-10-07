<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Donate_leave extends Model
{
   	  
	    protected $table = 'donate_leaves';

        protected $fillable = [
            'user_id','leave_name','donate_for','reason','days','staus',
        ];
}
