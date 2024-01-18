<?php
namespace App;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = ['id_category','model','name','description','list_price','sale_price','picture','specsheet','specs'];

    public function category()
    {
        return $this->belongsTo('App\Category','id_category','id');
    }
}