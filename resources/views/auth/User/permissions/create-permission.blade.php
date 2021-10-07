@extends('auth.User.app')
@section('title', 'Create Permission')
@section('content')
 
 <div class="app-title">
<div>
<h1><i class="fa fa-th-list"></i>&nbsp;&nbsp;Create Permission</h1>
</div>
<ul class="app-breadcrumb breadcrumb side">
<li class="breadcrumb-item">
<a href="{{route('admin.dashboard')}}"><i class="fa fa-home fa-lg"></a></i>
</li>
<li class="breadcrumb-item active"><a href="#">Create Permission</a></li>
</ul>
</div>
 <div class="row" style="height:500px">
 <div class="col-md-6 mx-auto">
<div class="tile">
<form action="{{route('permission-submit')}}" method="POST" role="form" enctype="multipart/form-data">
  @csrf
<div class="tile-body">
<div class="form-group">
<label class="control-label" for="name">Permission Name <span class="m-l-5 text-danger"> *</span></label>
<input type="text" class="form-control @error('title') is-invalid @enderror" name="title"  required>
@error('title')
<span class="invalid-feedback" role="alert">
<strong>{{ 'permission name already exit' }}</strong>
</span>
@enderror
</div>


</div>
<div class="tile-footer">
<button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save</button>

</div>
</form>
</div>
</div>
<div class="col-md-6">
   
</div>
</div>
@endsection