<?php

namespace App\Http\Controllers;

use App\product;
use Illuminate\Http\Request;
use App\wishList;

class WishListController extends Controller
{
    //
    public function addWishList(product $product){
        //dd($product);
        if(!auth()->check()){
            return redirect(route('login'));
        }
        $item = wishList::where('user_id','=',auth()->user()->id)->where('product_id','=', $product->id)->count();
        if($item!=0){
            return redirect(route('home'));
        }
        $wish = new wishList();
        $wish->user_id = auth()->user()->id;
        $wish->product_id = $product->id;
        $wish->save();
        return redirect()->back()->withMessage("Add Sucess");
    }
}
