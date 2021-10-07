<?php
namespace App;
use Carbon\Carbon;
use Hash;
use Illuminate\Auth\Notifications\ResetPassword;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use App\Notifications\UserResetPasswordNotification;
use Laravel\Passport\HasApiTokens;
use Illuminate\Database\Eloquent\Model;
class User extends Authenticatable
{
    use  Notifiable, HasApiTokens;
	//use SoftDeletes;
	
   public $timestamps = true;
   
    public $table = 'users';

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $dates = [
        'updated_at',
        'created_at',
        'deleted_at',
        'email_verified_at',
    ];

    protected $fillable = [
	    //'emp_id',
        'name',
		'father_name',
		'mother_name',
		'dob',
        'gender',
        'blood_group',
		'marital_Status',
		'pancard_no',
		'aadhar_no',
		'password',
		'image',
		'mobile',
		'alt_contact',
		'email',
		'alt_email',
		'address',
		'emergency_contact_no',
		'emergency_person_name',
		'emergency_relation',
		'dependent_person_name',
		'dependent_person_relation',
		'dependent_person_age',
		'designation',
		'department',
		'joining_date',
		'education_title',
		'education_board',
		'education_subject_name',
		'education_grade',
		
		'pre_company_name',
		'pre_designation',
		'pre_department',
		'from_date',
		'to_date',
		'description',
		
    ];
	
	  public function fieldlocations()
    {
        return $this->belongsToMany(Fieldlocation::class,'fieldlocation_id');
    }

     public function training()
    {
        return $this->belongsToMany(Training::class,'training_id');
    }

      public function getNameAttribute($value)
      {
         return ucfirst($value);
      }
      public function getCreatedAtAttribute($value)
     {
        $date = Carbon::parse($value);
        return $date->format('dd-md-YYYY');
     }
	  
	  public function setEmpNoAttribute()
      {
       $latest = User::max('emp_id');

        if ( ! $latest) { 
            $this->attributes['emp_id'] = '10001';
        }

    $this->attributes['emp_id'] = ++$latest; 
                                                                                            
    }

    public function sendPasswordResetNotification($token)
    {
        $this->notify(new UserResetPasswordNotification($token));
    }

    public function getEmailVerifiedAtAttribute($value)
    {
        return $value ? Carbon::createFromFormat('Y-m-d H:i:s', $value)->format(config('panel.date_format') . ' ' . config('panel.time_format')) : null;
    }

    public function setEmailVerifiedAtAttribute($value)
    {
        $this->attributes['email_verified_at'] = $value ? Carbon::createFromFormat(config('panel.date_format') . ' ' . config('panel.time_format'), $value)->format('Y-m-d H:i:s') : null;
    }

    public function setPasswordAttribute($input)
    {
        if ($input) {
            $this->attributes['password'] = app('hash')->needsRehash($input) ? Hash::make($input) : $input;
        }
    }
    public function timeEntries()
    {
        return $this->hasMany(TimeEntry::class);
		
    }
	
	protected $casts = [
     'data' => 'array',
];
	
}
