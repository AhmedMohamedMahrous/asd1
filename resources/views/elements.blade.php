@extends('masterView')

@section('header')
    <!--================Home Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>Admin Show Elements</h2>
                    <div class="page_link">
                        <a href="{{route('home')}}">Home</a>

                        <a href="{{route('elements')}}">Elements</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->

@endsection

@section('body')
    <section class="cat_product_area p_120">
        <div class="container">
            <div class="row flex-row-reverse">
                <div class="col-lg-9">

                    @foreach($categories as $category)
                        <h1 style="text-align: center;">Category : {{$category->name}}</h1>

                        <div class="product_top_bar">

                            <div class="left_dorp">
                                <select class="sorting" name="sort">
                                    <option value="1">Default sorting</option>
                                    <option value="2">Default sorting 01</option>
                                    <option value="4">Default sorting 02</option>
                                </select>
                                <select class="show" name="show">
                                    <option value="1">Show 12</option>
                                    <option value="2">Show 14</option>
                                    <option value="4">Show 16</option>
                                </select>
                            </div>
                        </div>
                        <!---->
                        {{$categories->links()}}
                        <div class="latest_product_inner row">
                            @foreach($category->product as $product)
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="f_p_item">
                                        <div class="f_p_img">
                                            <img class="img-fluid" src="/product_images/{{$product->img}}" alt="">
                                            <div class="p_icon">

                                                <a href="{{route('elements.edit',$product->id)}}"><i class="lnr lnr-warning"></i></a>
                                            </div>
                                        </div>
                                        <a href="/viewProduct/{{$product->id}}"><h4>{{$product->name}}</h4></a>
                                        <h5>${{$product->price}}</h5>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <!---->
                    @endforeach
                </div>

                <div class="col-lg-3">
                    <div class="left_sidebar_area">
                       @if($errors->any())
                            <div class="alert alert-danger">
                                <strong>Warrning </strong>
                                    @foreach($errors->all() as $error)
                                        {{$error}}
                                    @endforeach
                            </div>
                       @endif
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection