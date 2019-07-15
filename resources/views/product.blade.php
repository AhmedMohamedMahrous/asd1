@extends('masterView')

@section('header')
    <!--================Home Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>Single Product Page</h2>
                    <div class="page_link">
                        <a href="{{route('home')}}">Home</a>
                        <a href="category.html">Category</a>
                        <a href="">Product Details</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->
@endsection

@section('body')
    <!--================Single Product Area =================-->
    <div class="product_image_area">
        <div class="container">
            <div class="row s_product_inner">
                <?php
                use Illuminate\Support\Facades\DB;
                $product = DB::table('products')->where('id','=',request('id'))->first();
                ?>
                <div class="col-lg-6">
                    <div class="s_product_img">
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li class="custom_asd" data-target="#carouselExampleIndicators" data-slide-to="0" class="active">
                                    <img src="/product_images/{{$product->img}}" alt="">
                                </li>
                                <li class="custom_asd" data-target="#carouselExampleIndicators" data-slide-to="1">
                                    <img src="/product_images/{{$product->img_2}}" alt="">
                                </li>
                                <li class="custom_asd" data-target="#carouselExampleIndicators" data-slide-to="2">
                                    <img src="/product_images/{{$product->thumbnail}}" alt="">
                                </li>
                                <style>
                                    .custom_asd{
                                        width:60px;
                                        height: 60px;
                                    }
                                    .custom_asd img{
                                        width:60px;
                                        height: 60px;
                                    }
                                    .custom_aa{
                                        width:555px;
                                        height: 600px;
                                    }
                                    .custom_aa img{
                                        width:555px;
                                        height: 600px;
                                    }
                                </style>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active custom_aa">
                                    <img class="d-block w-100" src="/product_images/{{$product->img}}" alt="First slide">
                                </div>
                                <div class="carousel-item custom_aa">
                                    <img class="d-block w-100" src="/product_images/{{$product->img_2}}" alt="Second slide">
                                </div>
                                <div class="carousel-item custom_aa">
                                    <img class="d-block w-100" src="/product_images/{{$product->thumbnail}}" alt="Second slide">
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 offset-lg-1">
                    <div class="s_product_text">
                        <h3>{{$product->name}}</h3>
                        @if($product->discounted_price !=0)
                            <h2><del>${{$product->price}}</del></h2>
                            <h2>${{$product->discounted_price}}</h2>
                        @else
                            <h2>${{$product->price}}</h2>
                        @endif
                        <ul class="list">
                            <li><a class="active" href="#"><span>Category</span> :
                                </a></li>
                            <li><a href="#"><span>Availibility</span> : In Stock</a></li>
                        </ul>
                        <p>
                            {{$product->description}}
                        </p>
                        <div class="product_count">
                            <label for="qty">Quantity:</label>
                            <input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:" class="input-text qty">
                            <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;" class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
                            <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;" class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
                        </div>
                        <div class="card_area">
                            <a class="main_btn" href="@if(Auth::check())
                                                    {{route('addToCart',Auth::user()->id)}}
                                                @else
                                                    {{route('login')}}
                                                @endif">Add to Cart</a>
                            <a class="icon_btn" href="#"><i class="lnr lnr lnr-diamond"></i></a>
                            <a class="icon_btn" href="#"><i class="lnr lnr lnr-heart"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--================End Single Product Area =================-->
    <!--================Product Description Area =================-->
    <section class="product_description_area">
        <div class="container">
            <ul class="nav nav-tabs" id="myTab" role="tablist">

                <li class="nav-item">
                    <a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review" aria-selected="false">Reviews</a>
                </li>
            </ul>
            @if($errors->any())
                <div class="alert alert-danger">

                    <strong>Errors</strong>
                    <ul>
                        @foreach($errors->all() as $error)
                            <li>{{$error}}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <div class="tab-content" id="myTabContent">

                <div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
                    <div class="row">

                        <div class="col-lg-6">
                            <div class="row total_rate">
                                <div class="col-6">
                                    <div class="box_total">
                                        <h5>Overall</h5>
                                        <h4>4.0</h4>
                                        <h6>(03 Reviews)</h6>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="rating_list">
                                        <h3>Based on 3 Reviews</h3>
                                        <ul class="list">
                                            <li><a href="#">5 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                            <li><a href="#">4 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                            <li><a href="#">3 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                            <li><a href="#">2 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                            <li><a href="#">1 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="review_list">

                                <?php
                                use App\review;
                                $reviews = review::where('product_id','=',request('id'))->get();
                                ?>
                                @foreach($reviews as $review)
                                <div class="review_item">
                                    <div class="media">
                                        <div class="d-flex">

                                                <img src="/storage/profile_images/{{$review->user->img}}" alt=""
                                                style="width: 70px;height: 70px;border-radius: 50%;">
                                            
                                        </div>
                                        <div class="media-body">
                                            <h4><a href="{{route('viewProfile',$review->user->id)}}"> {{$review->user->name}}</a></h4>

                                            @for($i=1;$i<=$review->rating;$i++)
                                                <i class="fa fa-star"></i>
                                            @endfor
                                            @for($i=$review->rating+1 ; $i<=5;$i++)
                                                <i class="fa fa-star" style="color: #dddddd;"></i>
                                            @endfor
                                        </div>
                                    </div>
                                    <p>{{$review->review}}<br>{{$review->created_at}}</p>
                                </div>

                                @endforeach
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="review_box">
                                <h4>Add a Review</h4>
                                <p>Your Rating:</p>
                                <ul class="list">
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                </ul>
                                <p>Outstanding</p>
                                <form class="row contact_form" action="/addReview/{{$product->id}}" method="post" id="contactForm" novalidate="novalidate">
                                    {{csrf_field()}}
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="name" name="rating" placeholder="Your Rating Of Love ">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <textarea class="form-control" name="message" id="message" rows="1" placeholder="Review"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12 text-right">
                                        <button type="submit"  class="btn submit_btn">Submit Now</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Product Description Area =================-->


@endsection



