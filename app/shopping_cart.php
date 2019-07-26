<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class shopping_cart extends Model
{
    //
    public function product(){
        return $this->belongsTo('App\product','product_id','id');
    }
    public function user(){
        return $this->belongsTo('App\User','user_id','id');
    }
    public function order(){
        return $this->belongsTo('App\order','order_id','id');
    }
    public function product_1(){
        return $this->hasOne('App\product','id','product_id');
    }
}
