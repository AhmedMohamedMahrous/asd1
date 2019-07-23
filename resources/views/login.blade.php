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
							<a href="login">Login</a>
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
                    <strong>Errors</strong>
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
                            <a class="main_btn" href="register">Create an Account</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="login_form_inner">

                        <h3>Log in to enter</h3>
                        <form class="row login_form" action="/login/store" method="post" id="contactForm" novalidate="novalidate">
                            {{ csrf_field() }}
                            <div class="col-md-12 form-group">
                                <input type="email" class="form-control " id="email" value="{{old('email')}}" name="email" placeholder="Username"
                                style="{{$errors->has('email')? "border-bottom: 1px solid #F00;" : ""}}" >
                            </div>
                            <div class="col-md-12 form-group">
                                <input type="password" class="form-control" id="password" value="{{old('password')}}" name="password" placeholder="Password"
                                       style="{{$errors->has('password')? "border-bottom: 1px solid #F00;" : ""}}">
                            </div>
                            <div class="col-md-12 form-group">
                                <div class="creat_account">
                                    <input type="checkbox" id="f-option2" name="selector">
                                    <label for="f-option2">Keep me logged in</label>
                                </div>
                            </div>
                            <div class="col-md-12 form-group">
                                <button type="submit" value="submit" class="btn submit_btn">Log In</button>
                                <a href="#">Forgot Password?</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
<script>
    "use strict";
    var email = document.getElementById('email') , pass = document.getElementById('password');
    email.onblur = function (event)  {
        if(email.value.length <= 0){
            email.style.borderBottom = 1;
            email.style.borderBottomColor = "#F00";
            email.focus();
        }
        else{
            email.style.borderBottom = 1;
            email.style.borderBottomColor = "#cccccc";
            pass.focus();
        }
    }
    pass.onblur = function () {
        if(pass.value.length < 6){
            pass.style.borderBottom = 1;
            pass.style.borderBottomColor = "#F00";
            pass.focus();
        }
        else{
            pass.style.borderBottom = 1;
            pass.style.borderBottomColor = "#cccccc";
            //pass.focus();
        }
    }
</script>
    <!--================End Login Box Area =================-->
@endsection
