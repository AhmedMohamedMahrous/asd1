@extends('masterView')

@section('header')
    <!--================Home Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container" style="position: relative">
                <div class="banner_content text-center">
                    <h2>{{$user->name}}</h2>
                    <div class="page_link">
                        <a href="{{route('home')}}">Home</a>
                        <a href="{{route('viewProfile',$user->id)}}">{{$user->name}}</a>

                    </div>
                </div>
                <div class="" style="position: absolute; top:100px;right: 0;width:150px;height: 150px;background-color: #dddddd;
                                             border-radius: 50%;">
                    <img src="/storage/profile_images/{{$user->img}}" alt=""
                    style="width: 100%;height: 100%; border-radius: 50%;">
                </div>
                @if(Auth::check() &&Auth::user()->id === $user->id)
                <form action="{{route('addImageProfile',$user->id)}}" method="post" enctype="multipart/form-data">
                    {{csrf_field()}}
                    Select Image <input type="file" name="img">
                    <input type="submit" value="Change">
                </form>
                @endif
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->
@endsection

@section('body')

@endsection