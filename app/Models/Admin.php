<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Notifications\AdminResetPasswordNotification;
use Illuminate\Http\Request;
class Admin extends Authenticatable
{  
   use Notifiable;
  
      protected $guard = 'admin';
	  
	  protected $table = 'admins';

        protected $fillable = [
            'name','mobile', 'email', 'password','address',
        ];

        protected $hidden = [
            'password', 'remember_token',
        ];
		
     public function getNameAttribute($value)
        {
            return ucfirst($value);
        }

       
}
