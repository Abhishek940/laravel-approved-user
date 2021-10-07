<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Training extends Model
{
    protected $table = 'trainings';
    //protected $primaryKey = 'training_id';

    protected $fillable = [
      'youtube_video_link','training_ppt','training_time','training_assessment',
	  'training_validity','status',
        ];

         public function users()
         {
         return $this->belongsToMany('App\User','training_user');
         }

        
              
}
