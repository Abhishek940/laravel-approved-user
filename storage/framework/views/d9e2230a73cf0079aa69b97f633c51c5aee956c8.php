<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">

<div class="app-sidebar__user">
<div>
<p class="app-sidebar__user-name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <?php echo e(Auth::user()->name); ?></p>
</div>
</div>

<ul class="app-menu">
<li>
<a class="app-menu__item <?php echo e(Route::currentRouteName() == '' ? 'active' : ''); ?>" href="">

<i class="fa fa-tachometer" aria-hidden="true"></i>
<span class="app-menu__label">&nbsp;Dashboard</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="treeview-indicator fa fa-angle-right"></i>
</a>
</li>

<li class="treeview">
<a class="app-menu__item" href="#" data-toggle="treeview">
<i class="fa fa-user-circle" aria-hidden="true"></i>
&nbsp;&nbsp;<span class="app-menu__label">&nbsp;User Management</span>
&nbsp;&nbsp;&nbsp;<i class="treeview-indicator fa fa-angle-right"></i>
</a>
<ul class="treeview-menu">
<?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('create-user')): ?>
<li>
<a class="treeview-item" href="">
<i class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;Create User</a>
</li>
<?php endif; ?>
<li>
<a class="treeview-item" href="<?php echo e(route('user-list')); ?>">
<i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;User list</a>
</li>

</ul>
</li>

<?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('role-access')): ?>
<li class="treeview">
<a class="app-menu__item" href="#" data-toggle="treeview">
<i class="fa fa-address-card" aria-hidden="true"></i>
&nbsp;&nbsp;&nbsp;<span class="app-menu__label">Role Management</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="treeview-indicator fa fa-angle-right"></i>
</a>
<ul class="treeview-menu">
<?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('create-role')): ?>
<li>
<a class="treeview-item" href="<?php echo e(route('create-role')); ?>">
<i class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;Create Role</a>
</li>
<?php endif; ?>
<?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('role-list')): ?>
<li>
<a class="treeview-item" href="<?php echo e(route('role-list')); ?>">
<i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;Role list</a>
</li> 
<?php endif; ?>
</ul>
</li>
<?php endif; ?>
<?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('permission-access')): ?>
<li class="treeview">
<a class="app-menu__item" href="#" data-toggle="treeview"><i class="fa fa-th-list"></i>
&nbsp;&nbsp;&nbsp;<span class="app-menu__label">Permission Management&nbsp;</span>
<i class="treeview-indicator fa fa-angle-right"></i>
</a>
<ul class="treeview-menu">
<?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('create-permission')): ?>
<li>
<a class="treeview-item" href="<?php echo e(route('create-permission')); ?>">
<i class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;Create Permission</a>
</li>
<?php endif; ?>
<?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('permission-list')): ?>
<li>
<a class="treeview-item" href="<?php echo e(route('permission-list')); ?>">
<i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;Permission list</a>
</li> 
 <?php endif; ?>
</ul>
</li>
<?php endif; ?>
<?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('change-password')): ?>
<li>
<a class="app-menu__item" href="<?php echo e(route('user.change-password')); ?>">
<i class="fa fa-unlock-alt" aria-hidden="true"></i>
<span class="app-menu__label">&nbsp;&nbsp;&nbsp;&nbsp;Change Password</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="treeview-indicator fa fa-angle-right"></i>
</a>
</li>
<?php endif; ?>
<li>
<a class="app-menu__item" href="<?php echo e(route('user.logout')); ?>"><i class="fa fa-power-off"></i> 
<span class="app-menu__label">&nbsp;&nbsp;&nbsp;&nbsp;Logout</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="treeview-indicator fa fa-angle-right"></i>
</a>
</li>

</ul>
</aside><?php /**PATH C:\xampp\htdocs\laravel-task\auth-role\resources\views/auth/user/sidebar.blade.php ENDPATH**/ ?>