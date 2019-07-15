@extends('masterView')

@section('header')

    <!--================Home Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>Admin Edit Item : {{$product->name}}</h2>
                    <div class="page_link">
                        <a href="{{route('home')}}">Home</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->
@endsection
@section('body')
    <!--================Login Box Area =================-->
    <section class="login_box_area p_120">
        <div class="container">
            @if($errors->any())
                <div class="alert alert-danger">
                    <button type="button" class="close" data-dismis="alert" ></button>
                    <strong>Error</strong>
                    <ul>
                        @foreach($errors->all() as $error)
                            <li>{{$error}}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <div class="row">

                <div class="col-lg-12">
                    <div class="login_form_inner reg_form">
                        <style>
                            
                            input{
                                display: inline;
                            }
                            textarea{
                                display: inline;
                            }
                        </style>
                        <h3>Update : {{$product->name}}</h3>
                        <form style="max-width: 690px;"
                                class="row login_form" action="{{route('elements.update',$product->id)}}" method="post" id="contactForm" novalidate="novalidate">

                            {{ csrf_field() }}

                            <!--<lable>UserName</lable><input name="name" class="form-control" type="text"><br>-->
                                <div class="" style="width:100%">
                                    <lable>Name </lable>
                                    <input name="name" class="form-control" type="text" value="{{$product->name}}"><br>
                                </div>
                                <div style="width:100%">
                                    <lable>Description</lable>
                                    <textarea name="description" style="display: block;width:100%;" rows="5"
                                    >{{$product->description}}</textarea>
                                    <br>
                                </div>
                                <div class="" style="width:100%">
                                    <lable>Price </lable>
                                    <input name="price" class="form-control" type="text" value="{{$product->price}}"
                                           style="width:38%;display: inline;">
                                    <lable>Descount Price </lable>
                                    <input name="discounted_price" class="form-control" type="text" value="{{$product->discounted_price}}"
                                           style="width:38%;display: inline;">
                                </div>


                            <div class="col-md-12 form-group">


                                <br><br>
                                <button type="submit" value="submit" class="btn submit_btn">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Login Box Area =================-->

@endsection