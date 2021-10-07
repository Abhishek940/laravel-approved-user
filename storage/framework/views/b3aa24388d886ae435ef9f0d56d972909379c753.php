
<?php $__env->startSection('title', 'Edit User'); ?>
<?php $__env->startSection('content'); ?>
<div class="app-title">
<div>
<h1><i class="fa fa-th-list"></i>&nbsp;Edit User</h1>
</div>
<ul class="app-breadcrumb breadcrumb side">
<li class="breadcrumb-item">
<a href="<?php echo e(route('admin.dashboard')); ?>"><i class="fa fa-home fa-lg"></a></i>
</li>

<li class="breadcrumb-item active">Edit User</li>
</ul>
</div>
  <?php echo $__env->make('auth.Admin.flash-message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?> 
 <div class="row">
 <div class="col-md-7 mx-auto">
<div class="tile">
<h3 class="tile-title">Edit User</h3>
<form action="<?php echo e(route('user.update',$user->id)); ?>" method="post" name="form" enctype="multipart/form-data" onsubmit="return Validation()">
 <?php echo csrf_field(); ?>
 <?php echo e(method_field('put')); ?>

<div class="tile-body">
<div class="form-group">
<label class="control-label" for="name">Name <span class="m-l-5 text-danger"> *</span></label>
<input id="name" type="text" class="form-control <?php $__errorArgs = ['name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="name" value="<?php echo e(ucwords($user->name)); ?>" autocomplete="name" autofocus>
<?php $__errorArgs = ['name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
<span class="invalid-feedback" role="alert">
<strong><?php echo e($message); ?></strong>
</span>
<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
</div>

<div class="form-group">
<label class="control-label" for="name">Mobile No. <span class="m-l-5 text-danger"> *</span></label>
<input id="name" type="text" class="form-control <?php $__errorArgs = ['mobile'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="mobile" value="<?php echo e($user->mobile); ?>" autocomplete="name" autofocus onchange="return validatemobile(this)"  oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" type = "number"  maxlength = "10">
<?php $__errorArgs = ['mobile'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
<span class="invalid-feedback" role="alert">
<strong><?php echo e('Mobile no. already exists'); ?></strong>
</span>
<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
</div>
 
<div class="form-group">
<label class="control-label" for="name">Email Id <span class="m-l-5 text-danger"> *</span></label>
<input id="email" type="email" class="form-control <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="email" value="<?php echo e($user->email); ?>" autocomplete="email">
<?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
<span class="invalid-feedback" role="alert">
<strong><?php echo e('Email already exists'); ?></strong>
</span>
<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
</div>
 
 
<div class="form-group">
<label class="control-label" for="description">Address<span class="m-l-5 text-danger"> *</span></label>
<textarea class="form-control" rows="2" name="address" id="description"><?php echo e($user->address); ?></textarea>
 </div>

<div class="form-group <?php echo e($errors->has('roles') ? 'has-error' : ''); ?>">
<label for="roles">Roles <span class="m-l-5 text-danger"> *</span>
<span class="btn btn-info btn-xs select-all">Select all</span>
<span class="btn btn-info btn-xs deselect-all">deselect all</span></label>
<select name="roles[]" id="roles" class="form-control select2" multiple="multiple" >
<?php $__currentLoopData = $roles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $id => $roles): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<option value="<?php echo e($id); ?>" <?php echo e((in_array($id, old('roles', [])) || isset($user) && $user->roles->contains($id)) ? 'selected' : ''); ?>><?php echo e($roles); ?></option>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</select>
<?php if($errors->has('roles')): ?>
<em class="invalid-feedback">
<?php echo e($errors->first('roles')); ?>

</em>
<?php endif; ?>

</div>
 
</div>
<div class="tile-footer">
<button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update</button>
&nbsp;&nbsp;&nbsp;
<a class="btn btn-secondary" href="<?php echo e(route('user.index')); ?>"><i class="fa fa-fw fa-lg fa-times-circle"></i>Back</a>
</div>
</form>
</div>
</div>
<div class="col-md-5"></div>
</div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('scripts'); ?>
##parent-placeholder-16728d18790deb58b3b8c1df74f06e536b532695##
<script type="text/javascript">
function Validation()
{
var a = document.form.mobile.value;
if(a=="")
{
alert("please Enter the Contact Number");
document.form.mobile.focus();
return false;
}
if(isNaN(a))
{
alert("Enter the valid Mobile Number(Like : 9566137117)");
document.form.mobile.focus();
return false;
}
if((a.length < 10) || (a.length > 10))
//if(a.length<10){
{
alert("Mobile No.must be 10 digit");
document.form.mobile.select();
return false;
}
if((a.charAt(0)!=9) && (a.charAt(0)!=8) && (a.charAt(0)!=7) && (a.charAt(0)!=6)){
	
	//document.getElementbyId('messages').innerHTML="**Mobile No.must start with 9,8,7,6";
	alert(" Your Mobile Number must start with 9,8,7,6");
	document.form.mobile.select();
	return false;
	
}
}
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('auth.admin.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\laravel-task\auth-role\resources\views/auth/Admin/user/edit.blade.php ENDPATH**/ ?>