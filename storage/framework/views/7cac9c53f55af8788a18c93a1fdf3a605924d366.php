<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">

<div class="app-sidebar__user">
<div>
<p class="app-sidebar__user-name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <?php echo e(Auth::user()->name); ?></p>
</div>
</div>
<ul class="app-menu">
<li>
<a class="app-menu__item <?php echo e(Route::currentRouteName() == 'admin.dashboard' ? 'active' : ''); ?>" href="<?php echo e(route('admin.dashboard')); ?>">

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


<li>
<a class="treeview-item" href="<?php echo e(route('user.create')); ?>">
<i class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;Create User</a>
</li>
<li>
<a class="treeview-item" href="<?php echo e(route('user.index')); ?>">
<i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;User list</a>
</li>

</ul>
</li>


<li class="treeview">
<a class="app-menu__item" href="#" data-toggle="treeview">
<i class="fa fa-address-card" aria-hidden="true"></i>
&nbsp;&nbsp;&nbsp;<span class="app-menu__label">Role Management</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="treeview-indicator fa fa-angle-right"></i>
</a>
<ul class="treeview-menu">

<li>
<a class="treeview-item" href="<?php echo e(route('roles.create')); ?>">
<i class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;Create Role</a>
</li>

<li>
<a class="treeview-item" href="<?php echo e(route('roles.index')); ?>">
<i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;Role list</a>
</li> 

</ul>
</li>


<li class="treeview">
<a class="app-menu__item" href="#" data-toggle="treeview"><i class="fa fa-th-list"></i>
&nbsp;&nbsp;&nbsp;<span class="app-menu__label">Permission Management&nbsp;</span>
<i class="treeview-indicator fa fa-angle-right"></i>
</a>
<ul class="treeview-menu">

<li>
<a class="treeview-item" href="<?php echo e(route('permissions.create')); ?>">
<i class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;Create Permission</a>
</li>
<li>
<a class="treeview-item" href="<?php echo e(route('permissions.index')); ?>">
<i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;Permission list</a>
</li> 
 
</ul>
</li>


<li>
<a class="app-menu__item" href="<?php echo e(route('admin.change-password')); ?>">
<i class="fa fa-unlock-alt" aria-hidden="true"></i>
<span class="app-menu__label">&nbsp;&nbsp;&nbsp;&nbsp;Change Password</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="treeview-indicator fa fa-angle-right"></i>
</a>
</li>

<li>
<a class="app-menu__item" href="<?php echo e(route('admin.logout')); ?>"><i class="fa fa-power-off"></i> 
<span class="app-menu__label">&nbsp;&nbsp;&nbsp;&nbsp;Logout</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="treeview-indicator fa fa-angle-right"></i>
</a>
</li>

</ul>
</aside><?php /**PATH C:\xampp\htdocs\laravel-task\auth-role\resources\views/auth/Admin/sidebar.blade.php ENDPATH**/ ?>