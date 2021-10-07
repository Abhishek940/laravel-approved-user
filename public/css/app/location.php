<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class location extends Model
{
   protected $table = 'locations';

        protected $fillable = [
            'company_name','company_address','lat','long','radius',
        ];
}
