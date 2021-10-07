@extends('auth.Admin.app')
@section('title', 'Dashboard')
@section('content')
<!----calender----->
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="{{asset('calender/demo/css/ui.css')}}"/>
<link rel="stylesheet" type="text/css" href="{{asset('calender/dist/css/pignose.calendar.min.css')}}"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 

<script src="https://code.highcharts.com/highcharts.js"></script>

<section class="content-header">
<h1>
Dashboard
</h1>
<ol class="breadcrumb">
<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
<li class="active">Dashboard</li>
</ol>
</section>
<section class="content">
<div class="row">
<div class="col-lg-3 col-xs-6">
<div class="small-box bg-aqua">
<div class="inner">
<h3>150</h3>
<p>New Orders</p>
</div>
<div class="icon">
<i class="ion ion-bag"></i>
</div>
<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
</div>
</div>
<div class="col-lg-3 col-xs-6">
<div class="small-box bg-green">
<div class="inner">
<h3>53<sup style="font-size: 20px">%</sup></h3>
<p>Bounce Rate</p>
</div>
<div class="icon">
<i class="ion ion-stats-bars"></i>
</div>
<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
</div>
</div>
<div class="col-lg-3 col-xs-6">
<!-- small box -->
<div class="small-box bg-yellow">
<div class="inner">
<h3>44</h3>

<p>User Registrations</p>
</div>
<div class="icon">
<i class="ion ion-person-add"></i>
</div>
<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
</div>
</div>

<div class="col-lg-3 col-xs-6">
<div class="small-box bg-red">
<div class="inner">
<h3>65</h3>
<p>Unique Visitors</p>
</div>
<div class="icon">
<i class="ion ion-pie-graph"></i>
</div>
<a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
</div>
</div>
        
</div>      
</section>

@endsection
