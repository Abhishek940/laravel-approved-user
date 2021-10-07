
<?php $__env->startSection('title', 'Create Permission'); ?>
<?php $__env->startSection('content'); ?>
<div class="app-title">
<div>
<h1><i class="fa fa-th-list"></i>&nbsp;&nbsp;Create Permission</h1>
</div>
<ul class="app-breadcrumb breadcrumb side">
<li class="breadcrumb-item">
<a href="<?php echo e(route('admin.dashboard')); ?>"><i class="fa fa-home fa-lg"></a></i>
</li>
<li class="breadcrumb-item active"><a href="#">Create Permission</a></li>
</ul>
</div>
 <div class="row" style="height:500px">
 <div class="col-md-6 mx-auto">
<div class="tile">

<form action="<?php echo e(route('permissions.store')); ?>" method="POST" role="form" enctype="multipart/form-data">
  <?php echo csrf_field(); ?>
<div class="tile-body">
<div class="form-group">
<label class="control-label" for="name">Permission Name <span class="m-l-5 text-danger"> *</span></label>
<input type="text" class="form-control <?php $__errorArgs = ['title'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="title"  required>
<?php $__errorArgs = ['title'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
<span class="invalid-feedback" role="alert">
<strong><?php echo e('permission name already exit'); ?></strong>
</span>
<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
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
<?php $__env->stopSection(); ?>
<?php echo $__env->make('auth.Admin.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\laravel-task\laravel-task\resources\views/auth/Admin/permissions/create-permission.blade.php ENDPATH**/ ?>