@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center mt-5" >
        <div class="card">
            <div class="card-header">Verify Account</div>
            <div class="card-body"><p>Your Account is not Verify. Please Verify Your Account First
                <a href="{{route('resend.email')}}">Resend Verifiacton Email</a></p></div>
        </div>
    </div>
</div>


@endsection