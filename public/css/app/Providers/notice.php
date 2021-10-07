<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class notice extends Model
{
    use HasFactory;
	protected $table = 'notices';

        protected $fillable = [
            'notice_title','notice_reason','notice_date',
        ];
}
