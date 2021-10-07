<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Applyleave extends Model
{
    protected $table = 'apply_leaves';

     protected $fillable = [
     'user_id','email','leave_name','reason', 'from_date', 'to_date','leave_applied_for_days','status',
	  'rejected_leave','reason_for_reject','plbal','slbal','lopbal'
     ];
	
}
