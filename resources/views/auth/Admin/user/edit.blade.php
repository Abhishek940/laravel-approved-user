@extends('auth.admin.app')
@section('title', 'Edit User')
@section('content')
<div class="app-title">
<div>
<h1><i class="fa fa-th-list"></i>&nbsp;Edit User</h1>
</div>
<ul class="app-breadcrumb breadcrumb side">
<li class="breadcrumb-item">
<a href="{{route('admin.dashboard')}}"><i class="fa fa-home fa-lg"></a></i>
</li>

<li class="breadcrumb-item active">Edit User</li>
</ul>
</div>
  @include('auth.Admin.flash-message') 
 <div class="row">
 <div class="col-md-7 mx-auto">
<div class="tile">
<h3 class="tile-title">Edit User</h3>
<form action="{{ route('user.update',$user->id) }}" method="post" name="form" enctype="multipart/form-data" onsubmit="return Validation()">
 @csrf
 {{ method_field('put') }}
<div class="tile-body">
<div class="form-group">
<label class="control-label" for="name">Name <span class="m-l-5 text-danger"> *</span></label>
<input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ucwords($user->name)}}" autocomplete="name" autofocus>
@error('name')
<span class="invalid-feedback" role="alert">
<strong>{{ $message }}</strong>
</span>
@enderror
</div>

<div class="form-group">
<label class="control-label" for="name">Mobile No. <span class="m-l-5 text-danger"> *</span></label>
<input id="name" type="text" class="form-control @error('mobile') is-invalid @enderror" name="mobile" value="{{$user->mobile}}" autocomplete="name" autofocus onchange="return validatemobile(this)"  oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type = "number"  maxlength = "10">
@error('mobile')
<span class="invalid-feedback" role="alert">
<strong>{{ 'Mobile no. already exists' }}</strong>
</span>
@enderror
</div>
 
<div class="form-group">
<label class="control-label" for="name">Email Id <span class="m-l-5 text-danger"> *</span></label>
<input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{$user->email }}" autocomplete="email">
@error('email')
<span class="invalid-feedback" role="alert">
<strong>{{ 'Email already exists' }}</strong>
</span>
@enderror
</div>
 
 
<div class="form-group">
<label class="control-label" for="description">Address<span class="m-l-5 text-danger"> *</span></label>
<textarea class="form-control" rows="2" name="address" id="description">{{$user->address }}</textarea>
 </div>

<div class="form-group {{ $errors->has('roles') ? 'has-error' : '' }}">
<label for="roles">Roles <span class="m-l-5 text-danger"> *</span>
<span class="btn btn-info btn-xs select-all">Select all</span>
<span class="btn btn-info btn-xs deselect-all">deselect all</span></label>
<select name="roles[]" id="roles" class="form-control select2" multiple="multiple" >
@foreach($roles as $id => $roles)
<option value="{{ $id }}" {{ (in_array($id, old('roles', [])) || isset($user) && $user->roles->contains($id)) ? 'selected' : '' }}>{{ $roles }}</option>
@endforeach
</select>
@if($errors->has('roles'))
<em class="invalid-feedback">
{{ $errors->first('roles') }}
</em>
@endif

</div>
 
</div>
<div class="tile-footer">
<button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update</button>
&nbsp;&nbsp;&nbsp;
<a class="btn btn-secondary" href="{{route('user.index')}}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Back</a>
</div>
</form>
</div>
</div>
<div class="col-md-5"></div>
</div>
@endsection

@section('scripts')
@parent
<script type="text/javascript">
function Validation()
{
var a = document.form.mobile.value;
if(a=="")
{
alert("please Enter the Contact Number");
document.form.mobile.focus();
return false;
}
if(isNaN(a))
{
alert("Enter the valid Mobile Number(Like : 9566137117)");
document.form.mobile.focus();
return false;
}
if((a.length < 10) || (a.length > 10))
//if(a.length<10){
{
alert("Mobile No.must be 10 digit");
document.form.mobile.select();
return false;
}
if((a.charAt(0)!=9) && (a.charAt(0)!=8) && (a.charAt(0)!=7) && (a.charAt(0)!=6)){
	
	//document.getElementbyId('messages').innerHTML="**Mobile No.must start with 9,8,7,6";
	alert(" Your Mobile Number must start with 9,8,7,6");
	document.form.mobile.select();
	return false;
	
}
}
</script>
@stop