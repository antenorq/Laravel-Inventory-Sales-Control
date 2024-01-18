<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class SaleRequest extends FormRequest
{

    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'id_customer'=> 'required',            
            'id_sales_person'=> 'required',
            'id_assisted_by'=> 'required',
            'delivery_date'=> 'required',
            'id_mode_payment'=> 'required'
        ];
    }

}
