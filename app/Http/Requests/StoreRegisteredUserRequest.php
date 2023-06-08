<?php

namespace App\Http\Requests;

use App\Models\User;
use Illuminate\Validation\Rules;
use Illuminate\Foundation\Http\FormRequest;

class StoreRegisteredUserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        $rules = [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:' . User::class],
            'password' => ['required', 'confirmed', Rules\Password::defaults()],
            'role' => ['required', 'exists:roles,id'],
            'department' => ['required', 'exists:departments,id'],
        ];

        if ($this->role == User::TYPE_STUDENT) {
            $rules['email'][] = 'ends_with:@student.nstu.edu.bd';
        } else { // Other role
            $rules['email'][] = 'ends_with:nstu.edu.bd';
        }

        return $rules;
    }

    public function messages()
    {
        return [
            'email.ends_with' => 'Must provide your institutional mail',
        ];
    }
}
