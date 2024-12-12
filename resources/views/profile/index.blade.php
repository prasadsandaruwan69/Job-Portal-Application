@extends('layouts.admin.main')

@section('content')
    <div class="container mt-5">


        <div class="row justify-content-center">
            @if(Session::has('success'))
            <div class="alert alert-success">{{Session::get('success')}}</div>
        @endif
        @if(Session::has('error'))
        <div class="alert alert-danger">{{Session::get('error')}}</div>
    @endif
            <form action="{{route('user.update.profile')}}" method="post" enctype="multipart/form-data">@csrf
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="logo" name="logo">Logo</label>
                        <input type="file" name="profile_pic" id="logo" class="form-control">
                        @if (auth()->user()->profile_pic)
                        <img src="{{Storage::url(auth()->user()->profile_pic)}}" alt="" width="150">
                            
                        @endif
                    </div>
                    <div class="form-group">
                        <label for="name">Company Name</label>
                        <input type="text" name="name" class="form-control" value="{{auth()->user()->name}}">
                    </div>
                    <div class="form-group pt-4">
                        <button class="btn btn-success" type="submit">Update</button>
                    </div>
                </div>
            </form>
        </div>

        
        <div class="row justify-content-center">
            <h2>Change the Password</h2>

            <form action="{{ route('user.password') }}" method="post">@csrf
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="name" name="name">Your Current Password</label>
                        <input type="password" name="current_password" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="password">New Password</label>
                        <input type="password" name="password" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="password_confirmation">Confirm Password</label>
                        <input type="password" name="password_confirmation" class="form-control">
                    </div>
                    <div class="form-group pt-4">
                        <button class="btn btn-success" type="submit">Update</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
