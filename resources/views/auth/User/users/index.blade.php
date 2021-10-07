@extends('auth.User.app')
@section('title', 'User list')
@section('content')

<div class="app-title">
<div>
<h1><i class="fa fa-th-list"></i>&nbsp;User list</h1>
</div>
<ul class="app-breadcrumb breadcrumb side">
<li class="breadcrumb-item">
<a href="{{route('admin.dashboard')}}"><i class="fa fa-home fa-lg"></a></i>
</li>

<li class="breadcrumb-item active">User list</li>
</ul>
</div> 
@include('auth.Admin.flash-message')
  <div class="row" style="height:500px">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <table class="table table-hover table-bordered" id="sampleTable">
                <thead>
                  <tr>
				    <th>S.no</th>
                    <th>Name</th>
                    <th>Mobile No</th>
                    <th>Email Id</th>
                    <th>Role</th>
					@can('approve-user')
					<th>Approved</th>
					@endcan
					
                    </tr>
                </thead>
                <tbody>
                @foreach($user as $row)
			
                <tr>
				 <td>{{$loop->iteration}}</td>
				<td>{{($row->name)}}</td>
				<td>{{$row->mobile}}</td>
				<td>{{$row->email}}</td>
				<td>
        @foreach($row->roles as $key => $item)
        <span class="badge badge-info">{{ $item->title }}</span>
        @endforeach
        </td>
	
 <td>
@can('approve-user') 	
@if($row->approved=='0')
<a href="{{route('approved-user',$row->id)}}" class="btn btn-danger btn-sm">Pending</a>
@elseif($row->approved=='1')
<a href="{{route('approved-user',$row->id)}}" class="btn btn-success btn-sm">Approved</a>
@endif
@endcan
</td>
    

@endforeach
</td>

</tr>

</tbody>
</table>
</div>
</div>
</div>
</div> 
@endsection