<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="csrf-token" content="{{ csrf_token() }}">
<title>@yield('title')</title>
<link rel="stylesheet" type="text/css" href="{{ asset('url/css/main.css') }}" />
<link rel="stylesheet" type="text/css" href="{{ asset('url/css/font-awesome/4.7.0/css/font-awesome.min.css') }}"/>

<script src="{{ asset('js/app.js') }}" ></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" ></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css"  />
<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
<link rel="stylesheet" href="{{asset('css/demo.css')}}"/>
<link rel="stylesheet" href="{{asset('css/theme1.css')}}"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet" href="{{asset('dist/css/AdminLTE.min.css')}}">
<link rel="stylesheet" href="{{asset('dist/css/skins/_all-skins.min.css')}}">
<link rel="stylesheet" href="{{asset('plugins/iCheck/flat/blue.css')}}">
<link rel="stylesheet" href="{{asset('plugins/morris/morris.css')}}">
<link rel="stylesheet" href="{{asset('plugins/jvectormap/jquery-jvectormap-1.2.2.css')}}">
<link rel="stylesheet" href="{{asset('plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css')}}">

<link rel="stylesheet" href="{{asset('bootstrap/css/bootstrap.min.css')}}">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet" href="{{asset('plugins/daterangepicker/daterangepicker.css')}}">


</head>

<body class="app sidebar-mini rtl">
<main class="app-content">
@include('auth.Admin.header')
@include('auth.Admin.sidebar')
<!--@include('auth.Admin.flash-message')-->
@yield('content')


</main>

<script src="{{asset('bootstrap/js/bootstrap.min.js')}}"></script>
 <!--<script src="{{asset('js/jquery-3.2.1.min.js')}}"></script>-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9.8.2/dist/sweetalert2.all.min.js"></script>
<script src="{{ asset('js/main.js') }}"></script>
<script src="{{ asset('url/js/popper.min.js') }}"></script>
<!--<script src="{{ asset('url/js/bootstrap.min.js') }}"></script>-->
<script src="{{ asset('url/js/main1.js') }}"></script>
<script src="{{ asset('url/js/plugins/pace.min.js') }}"></script>
<script type="text/javascript" src="{{asset('js/plugins/jquery.dataTables.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/plugins/dataTables.bootstrap.min.js')}}"></script>


<script type="text/javascript">$('#sampleTable').DataTable();</script>
<script type="text/javascript">$('#sampleTable1').DataTable();</script>
<script type="text/javascript">$('#sampleTable2').DataTable();</script>
 <!--<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>-->
 <!--
<script src="https://cdn.datatables.net/select/1.3.0/js/dataTables.select.min.js"></script>
-->
<!--
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.5/js/select2.full.min.js"></script>

<!--<script src="bootstrap/js/bootstrap.min.js"></script>-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>

<!--
<script type="text/javascript" src="{{asset('js/caleandar.js')}}"></script>
<script type="text/javascript" src="{{asset('js/demo.js')}}"></script>
<script type="text/javascript" src="{{asset('js/demo1.js')}}"></script>
<script type="text/javascript" src="{{asset('js/demo2.js')}}"></script>
-->
<script src="{{asset('plugins/flot/jquery.flot.min.js')}}"></script>
<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
<script src="{{asset('plugins/flot/jquery.flot.resize.min.js')}}"></script>
<!-- FLOT PIE PLUGIN - also used to draw donut charts -->
<script src="{{asset('plugins/flot/jquery.flot.pie.min.js')}}"></script>
<!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
<script src="{{asset('plugins/flot/jquery.flot.categories.min.js')}}"></script>


@yield('scripts')
</body>
</html>