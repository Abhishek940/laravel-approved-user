<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;
class UpdateAdminRequest extends FormRequest
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
           'mobile' => 'required|regex:/^([0-9\s\-\+\(\)]*)$/|unique:admins|digits:10',
           'email' => ['required', 'string', 'email'],
            Rule::unique('admins', 'email')->ignore($this->admins()->id)],
         //'email' => ['required', Rule::unique('admins')->ignore($this->admin)]
        ];
    }
}
