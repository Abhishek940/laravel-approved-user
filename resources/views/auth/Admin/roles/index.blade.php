@extends('auth.Admin.app')
@section('title', 'Role list')
@section('content')

 <div class="app-title">
<div>
<h1><i class="fa fa-th-list"></i>&nbsp;&nbsp;Role list</h1>
</div>
<ul class="app-breadcrumb breadcrumb side">
<li class="breadcrumb-item">
<a href="{{route('admin.dashboard')}}"><i class="fa fa-home fa-lg"></a></i>
</li>
<li class="breadcrumb-item active"><a href="#">Role list</a></li>
</ul>
</div>
@include('auth.Admin.flash-message') 

      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <table class="table table-hover table-bordered" id="sampleTable">
                <thead>
                  <tr>
				    <th>S.no</th>
                    <th>Name</th>
                    <th>Permission</th>
					<th>Edit</th>
				    <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($roles as $row)
			
                <tr>
				 <td>{{$loop->iteration}}</td>
				<td>{{$row->title}}</td>
				<td>@foreach($row->permissions as $key => $item)
        <span class="badge badge-info">{{ $item->title }}</span>
        @endforeach
        </td>	
				  			                                    
 <td><a href="{{route('roles.edit',$row->id)}}" class="btn btn-success btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></td>
<form action="{{ route('roles.destroy',$row->id) }}" method="post">
<input type="hidden" name="_method" value="DELETE" />
{{ csrf_field() }}
{{ method_field('DELETE') }}
<td><button class="btn btn-danger btn-sm" onClick="return confirm('Are you sure you want to delete this ?');" ><i class="fa fa-trash-o" aria-hidden="true"></i></button>
</form>
</td>
</tr>
@endforeach
</tbody>
</table>
</div>
</div>
</div>
</div> 
@endsection