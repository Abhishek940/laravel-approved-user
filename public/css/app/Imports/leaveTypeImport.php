<?php

namespace App\Imports;

use App\leaveType;
use Maatwebsite\Excel\Concerns\ToModel;

class leaveTypeImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new leaveType([
           'leave_name' => $row[0],
			
        ]);
    }
}
