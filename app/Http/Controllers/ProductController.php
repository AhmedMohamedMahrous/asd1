<?php

namespace App\Http\Controllers;

use App\category;
use App\product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        if(! auth()->check() || (auth()->user()->is_admin == 0)){
            return redirect(route('login'));
        }
        $categories = category::latest()->paginate(1);
        return view('elements',[
            'categories' => $categories
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(product $product)
    {
        //
        if(auth()->check()) {
            if (!auth()->user()->is_admin) {
                return redirect()->back()->withErrors('Login AS Admin In System');
            }
        }else {
            return redirect()->back()->withErrors('Login AS Admin In System First');
        }

        return view('edit',[
            'product' => $product
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, product $product)
    {
        if(auth()->check()) {
            if (!auth()->user()->is_admin) {
                return redirect()->back()->withErrors('Login AS Admin In System');
            }
        }else {
            return redirect()->back()->withErrors('Login AS Admin In System First');
        }

        //
        //dd($product);
        $product->name             = $request->name;
        $product->description      = $request->description;
        $product->price            = $request->price;
        $product->discounted_price = $request->discounted_price;
        $product->save();
        return redirect('/product');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(product $product)
    {
        //
        //dd($product);
        if(auth()->check()) {
            if (!auth()->user()->is_admin) {
                return redirect()->back()->withErrors('Login AS Admin In System');
            }
        }else {
            return redirect()->back()->withErrors('Login AS Admin In System First');
        }

        $product->delete();
        return redirect()->back();
    }
}
