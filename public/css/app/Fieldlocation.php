<?php

namespace App;
use Illuminate\Database\Eloquent\Model;


class Fieldlocation extends Model
{
     protected $table = 'fieldlocations';

        protected $fillable = [
            'company_name','company_address','lat','long','radius','user_id',
        ];
		
		 public function users()
         {
         return $this->belongsToMany('App\User','fieldlocation_user');
         }

        
}
