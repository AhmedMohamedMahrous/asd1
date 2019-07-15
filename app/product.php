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
}
