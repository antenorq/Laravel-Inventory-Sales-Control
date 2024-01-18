<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class ProductRequest extends FormRequest
{

    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'id_category' => 'required',
            'model' => 'required',
            //'model' => 'required|unique:products',
            'name' => 'required',
            'description' => 'required',
            'list_price' => 'required',
            'sale_price' => 'required',
            'picture' => 'required',
            'specsheet' => 'required',
            'specs' => 'required'
        ];
    }

}
