<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class product extends Model
{
    //
    public function category(){
        return $this->belongsToMany('App\category','product_category');
    }
    public function review(){
        return $this->hasMany('App\review');
    }
    public function wighList(){
        return $this->hasMany('App\wishList','product_id','id');
    }
}
