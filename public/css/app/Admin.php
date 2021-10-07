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
  // use HasPermissionsTrait; 
	// use HasPermissionsTrait,Notifiable;
      protected $guard = 'admin';
	  
	  protected $table = 'admins';

        protected $fillable = [
            'name','mobile', 'email', 'password','address',
        ];

        protected $hidden = [
            'password', 'remember_token',
        ];
		
		public function timeEntries()
        {
         return $this->hasMany(TimeEntry::class);
         }
		
   public function roles()
    {
        return $this->belongsToMany('App\Role','admin_roles');
    }
	

    public function getNameAttribute($value)
        {
            return ucfirst($value);
        }

    /**
     * Send the password reset notification.
     *
     * @param  string  $token
     * @return void
     */
    public function sendPasswordResetNotification($token)
    {
        $this->notify(new AdminResetPasswordNotification($token));
    }
}
