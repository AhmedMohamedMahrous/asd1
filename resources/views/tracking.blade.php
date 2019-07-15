@extends('masterView')
@section('header')
    <!--================Home Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>Tracking</h2>
                    <div class="page_link">
                        <a href="{{route('home')}}">Home</a>
                        <a href="tracking.html"> Tracking</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->
@endsection

@section('body')
    <!--================Tracking Box Area =================-->
    <section class="tracking_box_area p_120">
        <div class="container">
            <div class="tracking_box_inner">
                <p>To track your order please enter your Order ID in the box below and press the "Track" button. This was given to you on your receipt and in the confirmation email you should have received.</p>
                <form class="row tracking_form" action="{{route('track')}}" method="post" novalidate="novalidate">
                    {{csrf_field()}}
                    <div class="col-md-12 form-group">
                        <input type="text" class="form-control" id="order" name="order" placeholder="Order ID">
                    </div>

                    <div class="col-md-12 form-group">
                        <button type="submit" value="submit" class="btn submit_btn">Track Order</button>
                    </div>
                </form>

            </div>
            @if($errors->any() )
                {{$order}}
                <div class="col-lg-4">
                    <div class="order_box">
                        <h2>Your Order : {{$order->shipping_id}} </h2>
                        <ul class="list">
                            <li><a href="#">Product <span>Total</span></a></li>
                            @foreach($order->shopping as $cart)
                                <li>
                                    <a href="#">{{$cart->product->name}} <span class="middle">x {{$cart->quantity}}</span>
                                        <span class="last">${{$cart->product->price * $cart->quantity}}</span></a>
                                </li>
                            @endforeach


                        </ul>
                        <ul class="list list_2">
                            <li><a href="#">Subtotal <span>${{$order->total_amount}}</span></a></li>
                            <li><a href="#">Shipping <span>Flat rate: $00.00</span></a></li>
                            <li><a href="#">Total <span>${{$order->total_amount}}</span></a></li>
                        </ul>
                        <div class="payment_item">
                            <div class="radion_btn">
                                <input type="radio" id="f-option5" name="selector">
                                <label for="f-option5">Check payments</label>
                                <div class="check"></div>
                            </div>
                            <p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                        </div>
                        <div class="payment_item active">
                            <div class="radion_btn">
                                <input type="radio" id="f-option6" name="selector">
                                <label for="f-option6">Paypal </label>
                                <img src="img/product/single-product/card.jpg" alt="">
                                <div class="check"></div>
                            </div>
                            <p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                        </div>

                    </div>
                </div>
            @endif
        </div>
    </section>
    <!--================End Tracking Box Area =================-->

@endsection