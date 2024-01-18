<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sale extends Model
{
    protected $fillable = ['id_customer','id_product','id_sales_person','id_assisted_by','delivery_date','id_mode_payment'];


    public function product()
    {
        return $this->belongsTo('App\Product','id_product','id');
    }

    public function customer()
    {
        return $this->belongsTo('App\Customer','id_customer','id');
    }

    public function salesperson()
    {
        return $this->belongsTo('App\SalesPerson','id_sales_person','id');
    }

    public function assistedby()
    {
        return $this->belongsTo('App\SalesPerson','id_assisted_by','id');
    }


}
