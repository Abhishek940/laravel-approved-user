<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">

<div class="app-sidebar__user">
<div>
<p class="app-sidebar__user-name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {{ Auth::user()->name }}</p>
</div>
</div>

<ul class="app-menu">
<li>
<a class="app-menu__item {{ Route::currentRouteName() == '' ? 'active' : '' }}" href="">

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
@can('create-user')
<li>
<a class="treeview-item" href="">
<i class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;Create User</a>
</li>
@endcan
<li>
<a class="treeview-item" href="{{route('user-list')}}">
<i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;User list</a>
</li>

</ul>
</li>

@can('role-access')
<li class="treeview">
<a class="app-menu__item" href="#" data-toggle="treeview">
<i class="fa fa-address-card" aria-hidden="true"></i>
&nbsp;&nbsp;&nbsp;<span class="app-menu__label">Role Management</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="treeview-indicator fa fa-angle-right"></i>
</a>
<ul class="treeview-menu">
@can('create-role')
<li>
<a class="treeview-item" href="{{route('create-role')}}">
<i class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;Create Role</a>
</li>
@endcan
@can('role-list')
<li>
<a class="treeview-item" href="{{route('role-list')}}">
<i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;Role list</a>
</li> 
@endcan
</ul>
</li>
@endcan
@can('permission-access')
<li class="treeview">
<a class="app-menu__item" href="#" data-toggle="treeview"><i class="fa fa-th-list"></i>
&nbsp;&nbsp;&nbsp;<span class="app-menu__label">Permission Management&nbsp;</span>
<i class="treeview-indicator fa fa-angle-right"></i>
</a>
<ul class="treeview-menu">
@can('create-permission')
<li>
<a class="treeview-item" href="{{route('create-permission')}}">
<i class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;Create Permission</a>
</li>
@endcan
@can('permission-list')
<li>
<a class="treeview-item" href="{{route('permission-list')}}">
<i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;Permission list</a>
</li> 
 @endcan
</ul>
</li>
@endcan
@can('change-password')
<li>
<a class="app-menu__item" href="{{route('user.change-password')}}">
<i class="fa fa-unlock-alt" aria-hidden="true"></i>
<span class="app-menu__label">&nbsp;&nbsp;&nbsp;&nbsp;Change Password</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="treeview-indicator fa fa-angle-right"></i>
</a>
</li>
@endcan
<li>
<a class="app-menu__item" href="{{route('user.logout')}}"><i class="fa fa-power-off"></i> 
<span class="app-menu__label">&nbsp;&nbsp;&nbsp;&nbsp;Logout</span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="treeview-indicator fa fa-angle-right"></i>
</a>
</li>

</ul>
</aside>