<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\category;

class department extends Model
{
    //
    public function category(){
        return $this->hasMany('App\category','department_id','department_id');
    }
}
