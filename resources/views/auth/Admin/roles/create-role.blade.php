@extends('auth.Admin.app')
@section('title', 'Role')
@section('content')
<div class="app-title">
<div>
<h1><i class="fa fa-th-list"></i>&nbsp;Create Role</h1>
</div>
<ul class="app-breadcrumb breadcrumb side">
<li class="breadcrumb-item">
<a href="{{route('admin.dashboard')}}"><i class="fa fa-home fa-lg"></a></i>
</li>
<li class="breadcrumb-item active">Create Role</li>
</ul>
</div>
 @include('auth.Admin.flash-message')  
 <div class="row" style="padding-bottom:200px">
 <div class="col-md-8 ">
<div class="tile">
<h3 class="tile-title">Manage Role</h3>
<form action="{{route('roles.store')}}" method="POST" role="form" enctype="multipart/form-data" id="myForm">
  @csrf
<div class="tile-body">
<div class="form-group">
<label class="control-label" for="name">Role Name <span class="m-l-5 text-danger"> *</span></label>
<input type="text" class="form-control @error('title') is-invalid @enderror" name="title"  required>
@error('title')
<span class="invalid-feedback" role="alert">
<strong>{{ 'Role Name already exit' }}</strong>
</span>
@enderror
</div>
</div>
<div class="form-group {{ $errors->has('permissions') ? 'has-error' : '' }}">
<label for="permissions">permission*
<span class="btn btn-info btn-xs select-all">select all</span>
<span class="btn btn-info btn-xs deselect-all">deselect all</span></label>
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

<div class="tile-footer">
<button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save</button>
&nbsp;&nbsp;&nbsp;
<button class="btn btn-primary" type="reset" onclick="Reset();"><i class="fa fa-fw fa-lg fa-check-circle"></i>Reset</button>
</div>
</form>
</div>
</div>
<div class="col-md-6"> 
</div>
</div>
@endsection
@section('scripts')
@parent
<script type="text/javascript">
    function Reset() {
		 var name = document.getElementById("name");
        var dropDown = document.getElementById("permissions");
		name.selectedIndex = 0;
        dropDown.selectedIndex = 0;
    }
</script>
@stop