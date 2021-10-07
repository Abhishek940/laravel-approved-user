@extends('auth.Admin.app')
@section('title', 'Edit Permission')
@section('content')

<div class="app-title">
<div>
<h1><i class="fa fa-th-list"></i>&nbsp;Edit Permission</h1>
</div>
<ul class="app-breadcrumb breadcrumb side">
<li class="breadcrumb-item">
<a href="{{route('admin.dashboard')}}"><i class="fa fa-home fa-lg"></a></i>
</li>
<li class="breadcrumb-item active"><a href="#">Edit Permission</a></li>
</ul>
</div>
   
 <div class="row" style="height:500px">
 <div class="col-md-7 mx-auto">
<div class="tile">
<h3 class="tile-title">Edit Permission</h3>
<form action="{{ route('permissions.update',$permission->id) }}" method="post" role="form" enctype="multipart/form-data">
 @csrf
{{ method_field('put') }}
<div class="tile-body">
<div class="form-group">
<label class="control-label" for="name">Permission Name <span class="m-l-5 text-danger"> *</span></label>
<input id="name" type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{$permission->title}}" autocomplete="name" autofocus>
@error('title')
<span class="invalid-feedback" role="alert">
<strong>{{ 'permission name already exit' }}</strong>
</span>
@enderror
</div>
</div>
<div class="tile-footer">
<button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update</button>
&nbsp;&nbsp;&nbsp;
<a class="btn btn-secondary" href="{{route('permissions.index')}}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Back</a>
</div>
</form>
</div>
</div>
<div class="col-md-5"></div>
</div>
@endsection