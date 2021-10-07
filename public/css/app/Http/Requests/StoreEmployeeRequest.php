<?php
use App\Rules\MaxWordsRule;
use Illuminate\Foundation\Http\FormRequest;

class StoreEmployeeRequest extends FormRequest
{

    public function rules()
    {
        return [
            'des'          => [
                'required',
            ],
            'des' => [
                new MaxWordsRule(),
            ]
        ];
    }
}

?>