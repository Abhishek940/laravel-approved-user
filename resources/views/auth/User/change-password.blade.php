@extends('auth.User.app')
@section('title', 'Change Password')
@section('content')

<div class="app-title">
<div>
<h1><i class="fa fa-th-list"></i>&nbsp;Change Password</h1>
</div>
<ul class="app-breadcrumb breadcrumb side">
<li class="breadcrumb-item">
<a href=""><i class="fa fa-home fa-lg"></a></i>
</li>

<li class="breadcrumb-item active">Change Password</li>
</ul>
</div>
   
<div class="row" style="height:500px">
<div class="col-md-7 mx-auto">
<div class="tile">
<form action="{{route('user.update-password')}}" method="POST" role="form" enctype="multipart/form-data">
  @csrf
@foreach ($errors->all() as $error)
<p class="text-danger">{{ $error }}</p>
  @endforeach 
 @include('auth.Admin.flash-message')
<div class="tile-body">
<div class="form-group">
<label class="control-label" for="name">Old Password <span class="m-l-5 text-danger"> *</span></label>
<input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="current_password" required autocomplete="name" autofocus>
</div>
 
 <div class="form-group">
<label class="control-label" for="name">New Password<span class="m-l-5 text-danger"> *</span></label>
<input id="password" type="text" class="form-control @error('new_password') is-invalid @enderror" name="new_password" required autocomplete="new-password">
@error('new_password')
<span class="invalid-feedback" role="alert">
<strong>{{ 'Your password must be more than 6 characters long, should contain at-least 1 Uppercase, 1 Lowercase, 1 Numeric and 1 special character.' }}</strong>
</span>
@enderror
</div>
    
<div class="form-group">
<label class="control-label" for="name">Confirm Password<span class="m-l-5 text-danger"> *</span></label>
<input id="password-confirm" type="text" class="form-control" name="new_confirm_password" required autocomplete="new-password">
</div>	
 
<div class="form-group">
<label class="form-check-label" for="flexCheckChecked">
log out to all devices
</label>
&nbsp;&nbsp;<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>

</div> 
 
</div>
<div class="tile-footer">
<button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update</button>
</div>
</form>
</div>
</div>
<div class="col-md-5"></div>
</div>
@endsection