<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
class Negativeleave extends Model
{
    
	protected $table = 'negative_leaves';

     protected $fillable = [
     'user_id','leave_name','reason', 'from_date', 'to_date','status',
     ];
	
	
}
