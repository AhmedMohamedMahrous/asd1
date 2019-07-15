@extends('masterView')
@section('header')
<!--================Home Banner Area =================-->
<section class="banner_area">
    <div class="banner_inner d-flex align-items-center">
        <div class="container">
            <div class="banner_content text-center">
                <h2>Login/Register</h2>
                <div class="page_link">
                    <a href="home">Home</a>
                    <a href="register">Register</a>
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
                <div class="col-lg-6">
                    <div class="login_box_img">
                        <img class="img-fluid" src="img/login.jpg" alt="">
                        <div class="hover">
                            <h4>New to our website?</h4>
                            <p>There are advances being made in science and technology everyday, and a good example of this is the</p>
                            <a class="main_btn" href="login">Have an Account</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login_form_inner reg_form">

                        <h3>Create an Account</h3>
                        <form class="row login_form" action="/register/store" method="post" id="contactForm" novalidate="novalidate">

                            {{ csrf_field() }}
                            <div class="col-md-12 form-group">
                                <input type="text" class="form-control" value="{{old('name')}}" id="name" name="name" placeholder="Name">
                            </div>
                            <div class="col-md-12 form-group">
                                <input type="email" class="form-control" value="{{old('email')}}" id="email" name="email" placeholder="Email Address">
                            </div>
                            <div class="col-md-12 form-group">
                                <input type="text" class="form-control" id="password" name="pass1" placeholder="Password">
                            </div>
                            <div class="col-md-12 form-group">
                                <input type="password" class="form-control" id="pass" name="pass2" placeholder="Confirm password">
                            </div>
                            <div class="col-md-12 form-group">
                                <div class="creat_account">
                                    <input type="checkbox" id="f-option2" name="selector">
                                    <label for="f-option2">Keep me logged in</label>
                                </div>
                            </div>
                            <div class="col-md-12 form-group">
                                <button type="submit" value="submit" class="btn submit_btn">Register</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Login Box Area =================-->
@endsection
