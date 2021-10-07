
<?php $__env->startSection('title', 'Change Password'); ?>
<?php $__env->startSection('content'); ?>

<div class="app-title">
<div>
<h1><i class="fa fa-th-list"></i>&nbsp;Change Password</h1>
</div>
<ul class="app-breadcrumb breadcrumb side">
<li class="breadcrumb-item">
<a href=""><i class="fa fa-home fa-lg"></a></i>
</li>

<li class="breadcrumb-item active">Change Password</li>
</ul>
</div>
   
<div class="row" style="height:500px">
<div class="col-md-7 mx-auto">
<div class="tile">
<form action="<?php echo e(route('user.update-password')); ?>" method="POST" role="form" enctype="multipart/form-data">
  <?php echo csrf_field(); ?>
<?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<p class="text-danger"><?php echo e($error); ?></p>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
 <?php echo $__env->make('auth.Admin.flash-message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div class="tile-body">
<div class="form-group">
<label class="control-label" for="name">Old Password <span class="m-l-5 text-danger"> *</span></label>
<input id="name" type="text" class="form-control <?php $__errorArgs = ['name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="current_password" required autocomplete="name" autofocus>
</div>
 
 <div class="form-group">
<label class="control-label" for="name">New Password<span class="m-l-5 text-danger"> *</span></label>
<input id="password" type="text" class="form-control <?php $__errorArgs = ['new_password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="new_password" required autocomplete="new-password">
<?php $__errorArgs = ['new_password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
<span class="invalid-feedback" role="alert">
<strong><?php echo e('Your password must be more than 6 characters long, should contain at-least 1 Uppercase, 1 Lowercase, 1 Numeric and 1 special character.'); ?></strong>
</span>
<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
</div>
    
<div class="form-group">
<label class="control-label" for="name">Confirm Password<span class="m-l-5 text-danger"> *</span></label>
<input id="password-confirm" type="text" class="form-control" name="new_confirm_password" required autocomplete="new-password">
</div>	
 
<div class="form-group">
<label class="form-check-label" for="flexCheckChecked">
log out to all devices
</label>
&nbsp;&nbsp;<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>

</div> 
 
</div>
<div class="tile-footer">
<button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update</button>
</div>
</form>
</div>
</div>
<div class="col-md-5"></div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('auth.Admin.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\laravel-task\auth-role\resources\views/auth/Admin/change-password.blade.php ENDPATH**/ ?>