<header class="app-header">
<a class="app-header__logo" href="#">
<img src="<?php echo e(asset('images/dfy.png')); ?>" alt="logo" style="height:55px;width:55px" /></a>
<a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
<ul class="app-nav">
<p style="color:#fff;text-align:center"><br><?php echo e(Auth::user()->name); ?></p>
&nbsp;&nbsp;&nbsp;<p style="color:#fff;align:center"><br>
<?php
echo $date = date('d-m-y H:i:s');
?>
</p>       

</ul>
</header> 
<?php /**PATH C:\xampp\htdocs\laravel-task\auth-role\resources\views/auth/user/header.blade.php ENDPATH**/ ?>