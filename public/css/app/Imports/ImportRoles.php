<?php

namespace App\Imports;

use App\Role;
use Maatwebsite\Excel\Concerns\ToModel;

class ImportPermissions implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Role([
             'title' => $row[0],
            ]);
    }
}
