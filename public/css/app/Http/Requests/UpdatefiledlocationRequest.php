<?php

namespace App\Http\Requests;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;
class UpdatefiledlocationRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
          
           'company_name' => ['required', 'string', 'company_name'],
            Rule::unique('fieldlocations', 'company_name')->ignore($this->fieldlocation()->id)],
         //'email' => ['required', Rule::unique('admins')->ignore($this->admin)]
        ];
    }
}
