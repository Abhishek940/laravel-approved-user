<?php

namespace App\Imports;

use App\Permission;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Illuminate\Validation\Rule;
use Maatwebsite\Excel\Concerns\Importable;
use Maatwebsite\Excel\Concerns\WithValidation;
use Maatwebsite\Excel\Concerns\SkipsFailures;
use Maatwebsite\Excel\Concerns\SkipsOnError;
use Maatwebsite\Excel\Concerns\SkipsOnFailure;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Events\AfterImport;
use Maatwebsite\Excel\Validators\Failure;
use Illuminate\Support\Facades\Validator;
use Throwable;
class ImportPermissions implements ToModel ,WithHeadingRow,
     SkipsOnError,WithValidation
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Permission([
             'title' => $row['title'],
            ]);
    }
	
	public function rules(): array
{
    return [
        'title' => Rule::unique('permissions', 'title'), // Table name, field in your db
    ];
}

public function customValidationMessages()
{
    return [
        'permission.unique' => 'Permission Name  already exit',
    ];
}

       public function onError(\Throwable $e)
    {
        // Handle the exception how you'd like.
    }
    

    public static function afterImport(AfterImport $event)
    {
    }

    public function onFailure(Failure ...$failure)
    {
    }
}
