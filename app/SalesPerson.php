<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SalesPerson extends Model
{
    protected $table = 'sales_people';
    protected $fillable = ['name','email','phone'];
}