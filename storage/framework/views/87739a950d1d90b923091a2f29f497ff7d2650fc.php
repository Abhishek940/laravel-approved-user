
<?php $__env->startSection('title', 'Role'); ?>
<?php $__env->startSection('content'); ?>
 
 <div class="app-title">
<div>
<h1><i class="fa fa-th-list"></i>&nbsp;Create Role</h1>
</div>
<ul class="app-breadcrumb breadcrumb side">
<li class="breadcrumb-item">
<a href="<?php echo e(route('admin.dashboard')); ?>"><i class="fa fa-home fa-lg"></a></i>
</li>

<li class="breadcrumb-item active">Create Role</li>
</ul>
</div>
 <?php echo $__env->make('auth.Admin.flash-message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>  
 <div class="row" style="padding-bottom:200px">
 <div class="col-md-8 ">
<div class="tile">
<h3 class="tile-title">Manage Role</h3>
<form action="<?php echo e(route('roles.store')); ?>" method="POST" role="form" enctype="multipart/form-data" id="myForm">
  <?php echo csrf_field(); ?>
<div class="tile-body">
<div class="form-group">
<label class="control-label" for="name">Role Name <span class="m-l-5 text-danger"> *</span></label>
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
<strong><?php echo e('Role Name already exit'); ?></strong>
</span>
<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
</div>
</div>
<div class="form-group <?php echo e($errors->has('permissions') ? 'has-error' : ''); ?>">
<label for="permissions">permission*
<span class="btn btn-info btn-xs select-all">select all</span>
<span class="btn btn-info btn-xs deselect-all">deselect all</span></label>
<select name="permissions[]" id="permissions" class="form-control select2" multiple="multiple" required>
<?php $__currentLoopData = $permissions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $id => $permissions): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<option value="<?php echo e($id); ?>" <?php echo e((in_array($id, old('permissions', [])) || isset($role) && $role->permissions->contains($id)) ? 'selected' : ''); ?>><?php echo e($permissions); ?></option>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</select>
<?php if($errors->has('permissions')): ?>
<em class="invalid-feedback">
<?php echo e($errors->first('permissions')); ?>

</em>
<?php endif; ?>
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
<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
##parent-placeholder-16728d18790deb58b3b8c1df74f06e536b532695##

<script type="text/javascript">
    function Reset() {
		 var name = document.getElementById("name");
        var dropDown = document.getElementById("permissions");
		name.selectedIndex = 0;
        dropDown.selectedIndex = 0;
    }
</script>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('auth.Admin.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\laravel-task\auth-role\resources\views/auth/Admin/roles/create-role.blade.php ENDPATH**/ ?>