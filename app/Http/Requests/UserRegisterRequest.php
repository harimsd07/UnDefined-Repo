<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserregisterRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'name' =>['required','min:3','max:50','string'],
            'email' =>['required','email','unique:users'],
            'dob' => ['required','date_format:d/m/y'],
            'password' =>['required','confirmed'],
        ];
    }
}
