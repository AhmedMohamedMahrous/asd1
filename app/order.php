<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class order extends Model
{
    //
    public function shopping(){
        //return $this->belongsTo('App\shopping_cart','shipping_id','id');
        return $this->hasMany('App\shopping_cart','order_id','id');
    }
    public function user(){
        return $this->belongsTo('App\User','customer_id','id');
    }
}
