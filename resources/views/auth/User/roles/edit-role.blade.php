@extends('auth.User.app')
@section('title', 'Edit Role')
@section('content')

<div class="app-title">
<div>
<h1><i class="fa fa-th-list"></i>&nbsp;&nbsp;Edit Role</h1>
</div>
<ul class="app-breadcrumb breadcrumb side">
<li class="breadcrumb-item">
<a href="{{route('admin.dashboard')}}"><i class="fa fa-home fa-lg"></a></i>
</li>
<li class="breadcrumb-item active"><a href="#">Edit Role</a></li>
</ul>
</div>
  @include('auth.Admin.flash-message') 
 <div class="row">
 <div class="col-md-7 mx-auto">
<div class="tile">
<h3 class="tile-title">Edit Role</h3>
<form action="" method="post" role="form" >
 @csrf
 {{ method_field('put') }}
<div class="tile-body">
<div class="form-group">
<label class="control-label" for="name">Name <span class="m-l-5 text-danger"> *</span></label>
<input id="name" type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{$role->title}}" autocomplete="name" autofocus>
@error('title')
<span class="invalid-feedback" role="alert">
<strong>{{'Role Name already exit'}}</strong>
</span>
@enderror
</div>
<div class="form-group {{ $errors->has('permissions') ? 'has-error' : '' }}">
<label for="permissions">{{ trans('cruds.role.fields.permissions') }}*
<span class="btn btn-info btn-xs select-all">{{ trans('global.select_all') }}</span>
<span class="btn btn-info btn-xs deselect-all">{{ trans('global.deselect_all') }}</span></label>
<select name="permissions[]" id="permissions" class="form-control select2" multiple="multiple" required>
@foreach($permissions as $id => $permissions)
<option value="{{ $id }}" {{ (in_array($id, old('permissions', [])) || isset($role) && $role->permissions->contains($id)) ? 'selected' : '' }}>{{ $permissions }}</option>
@endforeach
</select>
@if($errors->has('permissions'))
<em class="invalid-feedback">
{{ $errors->first('permissions') }}
</em>
@endif
</div>

</div>
<div class="tile-footer">
<button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update</button>
&nbsp;&nbsp;&nbsp;
<a class="btn btn-secondary" href="{{route('roles.index')}}"><i class="fa fa-fw fa-lg fa-times-circle"></i>Back</a>
</div>
</form>
</div>
</div>
<div class="col-md-5"></div>
</div>
@endsection