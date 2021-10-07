<?php

namespace App\Imports;

use App\User;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
class UsersImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new User([
           // $user=User::all();
             'name'     => $row[0],
			 'mobile'   => $row[1],
             'email'    => $row[2],
			 'gender'    => $row[3],
			 'designation' => $row[4],
			 'department' => $row[5],
			 'joining_date' => $row[6],
			 'address' => $row[7],
        ]);
    }
}
