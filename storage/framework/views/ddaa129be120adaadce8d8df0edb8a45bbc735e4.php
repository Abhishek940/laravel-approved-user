
<?php $__env->startSection('title', 'User Register'); ?>
<?php $__env->startSection('content'); ?>

<div class="app-title">
<div>
<h1><i class="fa fa-th-list"></i>&nbsp;User Registration</h1>
</div>
<ul class="app-breadcrumb breadcrumb side">
<li class="breadcrumb-item">
<a href="<?php echo e(route('admin.dashboard')); ?>"><i class="fa fa-home fa-lg"></a></i>
</li>

<li class="breadcrumb-item active">User Registration</li>
</ul>
</div>
<?php echo $__env->make('auth.Admin.flash-message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div class="row">
<div class="col-md-7 mx-auto">
<div class="tile">
<form action="<?php echo e(route('user.store')); ?>" method="POST" name="form" enctype="multipart/form-data" onsubmit="return Validation()">
  <?php echo csrf_field(); ?>
<div class="tile-body">
<div class="form-group">
<input type="hidden" name="user_type" value="user">
<label class="control-label" for="name">Name <span class="m-l-5 text-danger"> *</span></label>
<input id="name" type="text" class="form-control <?php $__errorArgs = ['name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="name" value="<?php echo e(old('name')); ?>" placeholder="Name" required autocomplete="name" maxlength="30" id="name" >
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
<input id="mobilenumber" class="form-control <?php $__errorArgs = ['mobile'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="<?php echo e(old('mobile')); ?>" name="mobile"  Placeholder="Mobile No."onchange="return validatemobile(this)" onkeypress="if ( isNaN( String.fromCharCode(event.keyCode) )) return false;"  maxlength = "10"  maxlength = "10">
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
<input type="email" class="form-control <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="<?php echo e(old('email')); ?>" name="email" placeholder="Email Id" onchange="return validateemail(this)">
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
<label class="control-label" for="name">Password<span class="m-l-5 text-danger"> *</span></label>
<input id="password" type="password" class="form-control <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="password" required>
<?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
<span class="invalid-feedback" role="alert">
<strong><?php echo e('Your password must be more than 8 characters long, should contain at-least 1 Uppercase, 1 Lowercase, 1 Numeric and 1 special character.'); ?></strong>
</span>
<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
</div>
    
<div class="form-group">
<label class="control-label" for="name">Confirm Password<span class="m-l-5 text-danger"> *</span></label>
<input id="password-confirm" type="password" class="form-control <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="password_confirmation" required onchange="return passwordvalidate(this)" >
<?php $__errorArgs = ['password_confirmation'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
<span class="invalid-feedback" role="alert">
<strong><?php echo e('Your Confirm password does not match.'); ?></strong>
</span>
<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
</div>	
 
<div class="form-group">
<label class="control-label" for="description">Address</label>
<textarea class="form-control" rows="2" name="address" id="description"><?php echo e(old('address')); ?></textarea>
<?php $__errorArgs = ['address'];
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
 
<div class="form-group <?php echo e($errors->has('roles') ? 'has-error' : ''); ?>">
<label for="roles">Role<span class="m-l-5 text-danger"> *</span>
<span class="btn btn-info btn-xs select-all">select all</span>
<span class="btn btn-info btn-xs deselect-all">deselect all</span></label>
<select name="roles[]" id="roles" class="form-control select2" multiple="multiple">
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
<button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save</button>
&nbsp;&nbsp;&nbsp;
<a class="btn btn-secondary" href=""><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
</div>
</form>
</div>
</div>
<div class="col-md-5"></div>
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('scripts'); ?>
##parent-placeholder-16728d18790deb58b3b8c1df74f06e536b532695##
<script>
function testInput(event) {
   var value = String.fromCharCode(event.which);
   var pattern = new RegExp(/[a-zåäö ]/i);
   return pattern.test(value);
}

$('#name').bind('keypress', testInput);
</script>

<script type="text/javascript">
function Validation()
{
var a = document.form.mobile.value;
if(a=="")
{
alert("please Enter the Mobile Number");
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
<script type="text/javascript">
function validatemobile(mobile)
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
//return false;
$(mobile).val("");
}
if((a.length < 10) || (a.length > 10))
//if(a.length<10){
{
alert("Mobile No.must be 10 digit");
document.form.mobile.select();
//return false;
$(mobile).val("");
}
if((a.charAt(0)!=9) && (a.charAt(0)!=8) && (a.charAt(0)!=7) && (a.charAt(0)!=6)){
alert(" Your Mobile Number must start with 9,8,7,6");
document.form.mobile.select();
//return false;
$(mobile).val("");	
}
}
</script>

<script>
function validateemail(e) {
let email = $(e).val();
var regex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
if (email.match(regex)) {
return true;
}
else {
alert(" Invalid Email Id");
$(e).val("");
}
}
</script>

<script>
function validatetext(e) {
let email = $(e).val();
var regex = /^[A-Za-z]+$/;
if (email.match(regex)) {
return true;
}
else {
alert('Please input alphabet characters only');
$(e).val("");
}
}
</script>

<script type="text/javascript">
function passwordvalidate(pass)
{
   
if(form.password.value != "" && form.password.value == form.password_confirmation.value) {
if(form.password.value.length < 8) {
alert("Error: Password must contain at least 8 characters!");
form.password.focus();
$(pass).val("");
}
re =  /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
if(!re.test(form.password.value)) {
alert("Error: password must contain at least one uppercase letter (A-Z)!,one lowercase letter (a-z)!,one number (0-9),one special character(@,#,$,%,&,*)!");
form.password.focus();
$(pass).val("");

}
} else {
alert("Error: Please check that you've entered password and confirm password does not match!");
form.password.focus();
$(pass).val("");
}
//alert("You entered password: " + form.password.value);
return true;
  }

</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('auth.Admin.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\laravel-task\laravel-task\resources\views/auth/Admin/user/create.blade.php ENDPATH**/ ?>