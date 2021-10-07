<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class notice extends Model
{
    protected $table = 'notices';

        protected $fillable = [
            'notice','date',
        ];
}
