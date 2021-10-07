<?php

namespace App\Imports;

use App\leave;
use Maatwebsite\Excel\Concerns\ToModel;

class leaveImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new leave([
            'name' => $row[0],
			'leave_date' => $row[1],
        ]);
    }
}
