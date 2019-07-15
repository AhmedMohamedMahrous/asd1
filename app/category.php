<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class category extends Model
{
    //
    public function department(){
        return $this->belongsTo('App\department');
    }
    public function product(){
        return $this->belongsToMany('App\product','product_category');
    }
}
