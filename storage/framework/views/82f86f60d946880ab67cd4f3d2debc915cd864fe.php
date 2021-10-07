<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> Login</title>
<link rel="icon" type="image/x-icon" href="images/favicon.png">
<!-- Custom Stylesheet -->
<link rel="stylesheet" href="<?php echo e(asset('dist/css/style.css')); ?>" />
</head>
<body>

<div class="lgn-background" style="background-image: url(uploads/slider-law-1.jpg);">
<div class="lgn-wrapper">
<div class="lgn-logo text-center">
<h2 style="color:#fff;font-size:24px;text-align:center">User Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>
</div>
<?php if(session()->has('message')): ?>
<p class="alert alert-info">
<?php echo e(session()->get('message')); ?>

</p>
<?php endif; ?>
<?php echo $__env->make('auth.Admin.flash-message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div id="login-form" class="lgn-form ">
<form class="form-vertical" action="<?php echo e(route('login')); ?>" method="post">
<?php echo csrf_field(); ?>
<div class="lgn-input form-group">
<label class="control-label col-sm-12">Username</label>
<div class="col-sm-12">
<input type="text" name="email" id="lgn-mail" placeholder="Enter your Email" class="form-control <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" autofocus value="<?php echo e(old('email')); ?>"/>
</div>
<?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
<span class="m-l-5 text-danger" role="alert">
<strong><?php echo e($message); ?></strong>
</span>
<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
</div>
<div class="lgn-input form-group">
<label class="control-label col-sm-12">Password</label>
<div class="col-sm-12">
<input type="password" name="password" id="lgn-pass" class="form-control <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" placeholder="Enter your Password" autofocus value="<?php echo e(old('password')); ?>">
</div>
<?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
<span class="m-l-5 text-danger" role="alert">
<strong><?php echo e($message); ?></strong>
</span>
<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
					
</div>
<div class="lgn-forgot">
<a href="<?php echo e(route('user-register')); ?>">Register?</a>
</div>
<div class="lgn-submit">
<button type="submit" id="" class="btn btn-primary btn-pill btn-lg" name="login">Login</button>
</div>
</form>
</div> 
</div>
</div> 
<script type="text/javascript" src="<?php echo e(asset('assets/plugin/jquery/jquery-3.3.1.min.js')); ?>"></script>
<script type="text/javascript" src="<?php echo e(asset('assets/plugin/popper/popper.min.js')); ?>"></script>
<script type="text/javascript" src="<?php echo e(asset('assets/plugin/bootstrap/bootstrap.min.js')); ?>"></script>
</body>
</html><?php /**PATH C:\xampp\htdocs\laravel-task\laravel-task\resources\views/auth/login.blade.php ENDPATH**/ ?>