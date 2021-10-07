<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>User SignUp</title>
<link rel="icon" type="image/x-icon" href="images/favicon.png">
<!-- Custom Stylesheet -->
<link rel="stylesheet" href="<?php echo e(asset('dist/css/style.css')); ?>" />
</head>
<body>

<div class="lgn-background" style="background-image: url(uploads/slider-law-1.jpg);">
<div class="lgn-wrapper">
<div class="lgn-logo text-center">
<h2 style="color:#fff;font-size:24px;text-align:center">User SignUp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>
</div>
<?php echo $__env->make('auth.flash-message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div id="login-form" class="lgn-form ">
<form class="form-vertical" action="<?php echo e(route('user-submit')); ?>" method="post">
<?php echo csrf_field(); ?>
<div class="lgn-input form-group">
<label class="control-label col-sm-12">Name</label>
<div class="col-sm-12">
<input type="text" name="name" id="lgn-mail" placeholder="Enter your Name" class="form-control <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" autofocus value="<?php echo e(old('name')); ?>"/>
</div>
<?php $__errorArgs = ['name'];
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
<label class="control-label col-sm-12">Mobile No.</label>
<div class="col-sm-12">
<input id="mobilenumber" class="form-control <?php $__errorArgs = ['mobile'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" value="<?php echo e(old('mobile')); ?>" name="mobile"  Placeholder="Mobile No."onchange="return validatemobile(this)" onkeypress="if ( isNaN( String.fromCharCode(event.keyCode) )) return false;"  maxlength = "10"  maxlength = "10">
</div>
<?php $__errorArgs = ['mobile'];
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
<label class="control-label col-sm-12">Email</label>
<div class="col-sm-12">
<input type="email" name="email" class="form-control <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" placeholder="Enter your email" autofocus value="<?php echo e(old('email')); ?>">
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
<input type="password" name="password" class="form-control <?php $__errorArgs = ['password'];
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
<strong><?php echo e('Your password must be more than 8 characters long, should contain at-least 1 Uppercase, 1 Lowercase, 1 Numeric and 1 special character.'); ?></strong>
</span>
<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>						
</div>
<div class="lgn-input form-group">
<label class="control-label col-sm-12">Confirm Password </label>
<div class="col-sm-12">
<input id="password-confirm" type="password" class="form-control <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="password_confirmation" required onchange="return passwordvalidate(this)" >
</div>
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

<div class="lgn-input form-group">
<label class="control-label col-sm-12">Address</label>
<div class="col-sm-12">
<input type="text" name="address" class="form-control <?php $__errorArgs = ['address'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" placeholder="Enter your Address" autofocus value="<?php echo e(old('address')); ?>">
</div>
<?php $__errorArgs = ['address'];
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
<a href="<?php echo e(route('login')); ?>">Login ?</a>
</div>
<div class="lgn-submit">
<button type="submit" id="" class="btn btn-primary btn-pill btn-lg" name="signup">SignUp</button>
</div>
</form>
</div> 
</div>
</div> 
<script type="text/javascript" src="<?php echo e(asset('assets/plugin/jquery/jquery-3.3.1.min.js')); ?>"></script>
<script type="text/javascript" src="<?php echo e(asset('assets/plugin/popper/popper.min.js')); ?>"></script>
<script type="text/javascript" src="<?php echo e(asset('assets/plugin/bootstrap/bootstrap.min.js')); ?>"></script>
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

return true;
  }

</script>
</body>
</html><?php /**PATH C:\xampp\htdocs\laravel-task\auth-role\resources\views/auth/register.blade.php ENDPATH**/ ?>