
@extends('masterView')
@section('includeStyle')

@endsection
@section('header')
    <!--================Home Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>All Categories</h2>
                    <div class="page_link">
                        <a href="{{route('home')}}">Home</a>
                        <a href="{{route('allCategories')}}">Category</a>

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
                    @foreach($categories as $cat)
                        <h1 style="text-align: center;">Category : {{$cat->name}}</h1>
                        <p>{{$cat->description}}</p>
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
                            <div class="right_page ml-auto">
                                <nav class="cat_page" aria-label="Page navigation example">
                                    {{$categories->links()}}
                                </nav>
                            </div>

                        </div>

                        <div class="latest_product_inner row">


                                @foreach($cat->product as $pro)
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <div class="f_p_item">
                                            <div class="f_p_img">
                                                <img class="img-fluid" src="/product_images/{{$pro->img}}" alt="">
                                                <div class="p_icon">
                                                    <a href="{{route('addWishList',$pro->id)}}"><i class="lnr lnr-heart"></i></a>
                                                    <a href="{{route('addToCart',$pro->id)}}"><i class="lnr lnr-cart"></i></a>
                                                </div>
                                            </div>
                                            <a href="/viewProduct/{{$pro->id}}"><h4>{{$pro->name}}</h4></a>
                                            <h5>$
                                                @if($pro->discounted_price == 0)
                                                    {{$pro->price}}
                                                @else
                                                    {{$pro->discounted_price}}
                                                @endif
                                            </h5>
                                        </div>
                                    </div>
                                @endforeach


                        </div>
                    @endforeach
                </div>
                <div class="col-lg-3">
                    <div class="left_sidebar_area">
                        <aside class="left_widgets cat_widgets">
                            <div class="l_w_title">
                                <h3>Browse Department</h3>
                            </div>
                            <div class="widgets_inner">
                                <ul class="list">
                                    <?php
                                    $i=0;
                                    ?>
                                    @foreach($departments as $department)
                                        <li>
                                            <a href="#">{{$department->name}}</a>
                                            <ul class="list">
                                                <?php

                                                $categories = DB::table('categories')->where('department_id','=',1)->get();
                                                ?>
                                                @foreach($department->category as $cat)
                                                    <li><a href="/viewCategory/{{$cat->id}}">{{$cat->name}}</a></li>

                                                @endforeach
                                            </ul>
                                        </li>
                                    @endforeach

                                </ul>
                            </div>
                        </aside>
                        <aside class="left_widgets p_filter_widgets">
                            <div class="l_w_title">
                                <h3>Product Filters</h3>
                            </div>
                            <div class="widgets_inner">
                                <h4>Brand</h4>
                                <ul class="list">
                                    <li><a href="#">Apple</a></li>
                                    <li><a href="#">Asus</a></li>
                                    <li class="active"><a href="#">Gionee</a></li>
                                    <li><a href="#">Micromax</a></li>
                                    <li><a href="#">Samsung</a></li>
                                </ul>
                            </div>
                            <div class="widgets_inner">
                                <h4>Color</h4>
                                <ul class="list">
                                    <li><a href="#">Black</a></li>
                                    <li><a href="#">Black Leather</a></li>
                                    <li class="active"><a href="#">Black with red</a></li>
                                    <li><a href="#">Gold</a></li>
                                    <li><a href="#">Spacegrey</a></li>
                                </ul>
                            </div>
                            <div class="widgets_inner">
                                <h4>Price</h4>
                                <div class="range_item">
                                    <div id="slider-range"></div>
                                    <div class="row m0">
                                        <label for="amount">Price : </label>
                                        <input type="text" id="amount" readonly>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--================Most Product Area =================-->
    <section class="most_product_area most_p_withoutbox">
        <div class="container">
            <div class="main_title">
                <h2>Most Searched Products</h2>
                <p>Who are in extremely love with eco friendly system.</p>
            </div>
            <div class="row most_product_inner">
                <?php
                $i=0;

                ?>
                <div class="col-lg-3 col-sm-6">
                    @for($i=0;$i<count($mostPop)/4;$i++)
                        <div class="most_p_list">
                            <div class="media">
                                <div class="d-flex">
                                    <img style="width: 70px;height: 70px;border-radius: 3px;"
                                         src="/product_images/{{$mostPop[$i]->img}}" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="{{route('viewProduct.id',$mostPop[$i]->id)}}"><h4>{{$mostPop[$i]->name}}</h4></a>
                                    <h3>${{$mostPop[$i]->price}}</h3>
                                </div>
                            </div>
                        </div>
                    @endfor
                </div>

                <div class="col-lg-3 col-sm-6">
                    @for($i=count($mostPop)/4 +1;$i<2*count($mostPop)/4;$i++)
                        <div class="most_p_list">
                            <div class="media">
                                <div class="d-flex">
                                    <img style="width: 70px;height: 70px;border-radius: 3px;"
                                         src="/product_images/{{$mostPop[$i]->img}}" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="{{route('viewProduct.id',$mostPop[$i]->id)}}"><h4>{{$mostPop[$i]->name}}</h4></a>
                                    <h3>${{$mostPop[$i]->price}}</h3>
                                </div>
                            </div>
                        </div>
                    @endfor
                </div>
                <div class="col-lg-3 col-sm-6">
                    @for($i=2*count($mostPop)/4;$i < 3*count($mostPop)/4;$i++)
                        <div class="most_p_list">
                            <div class="media">
                                <div class="d-flex">
                                    <img style="width: 70px;height: 70px;border-radius: 3px;"
                                         src="/product_images/{{$mostPop[$i]->img}}" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="{{route('viewProduct.id',$mostPop[$i]->id)}}"><h4>{{$mostPop[$i]->name}}</h4></a>
                                    <h3>${{$mostPop[$i]->price}}</h3>
                                </div>
                            </div>
                        </div>
                    @endfor
                </div>
                <div class="col-lg-3 col-sm-6">
                    @for($i=3*count($mostPop)/4 +1;$i < count($mostPop);$i++)
                        <div class="most_p_list">
                            <div class="media">
                                <div class="d-flex">
                                    <img style="width: 70px;height: 70px;border-radius: 3px;"
                                         src="/product_images/{{$mostPop[$i]->img}}" alt="">
                                </div>
                                <div class="media-body">
                                    <a href="{{route('viewProduct.id',$mostPop[$i]->id)}}"><h4>{{$mostPop[$i]->name}}</h4></a>
                                    <h3>${{$mostPop[$i]->price}}</h3>
                                </div>
                            </div>
                        </div>
                    @endfor
                </div>
            </div>
        </div>
    </section>
    <!--================End Most Product Area =================-->
@endsection
