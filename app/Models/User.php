<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
class User extends Authenticatable
{
    use  Notifiable;
	  
   public $table = 'users';
   protected $hidden = [
        'password',
        'remember_token',
    ];
    protected $fillable = [
            'user_type','name','mobile', 'email', 'password','address','approved',
        ];
	  
     public function roles()
    {
        return $this->belongsToMany('App\Models\Role','role_user');
    }
	
    public function getNameAttribute($value)
      {
         return ucfirst($value);
      }
	  
	  
	 	 

}
