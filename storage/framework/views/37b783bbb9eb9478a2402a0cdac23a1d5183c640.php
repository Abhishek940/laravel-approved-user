
<?php $__env->startSection('title', 'Role list'); ?>
<?php $__env->startSection('content'); ?>

 <div class="app-title">
<div>
<h1><i class="fa fa-th-list"></i>&nbsp;&nbsp;Role list</h1>
</div>
<ul class="app-breadcrumb breadcrumb side">
<li class="breadcrumb-item">
<a href="<?php echo e(route('admin.dashboard')); ?>"><i class="fa fa-home fa-lg"></a></i>
</li>
<li class="breadcrumb-item active"><a href="#">Role list</a></li>
</ul>
</div>
<?php echo $__env->make('auth.Admin.flash-message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?> 

      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <table class="table table-hover table-bordered" id="sampleTable">
                <thead>
                  <tr>
				    <th>S.no</th>
                    <th>Name</th>
                    <th>Permission</th>
					<?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('edit-role')): ?>
					<th>Edit</th>
					<?php endif; ?>
					<?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('delete-role')): ?>
				    <th>Delete</th>
					<?php endif; ?>
                    </tr>
                </thead>
                <tbody>
                <?php $__currentLoopData = $roles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			
                <tr>
				 <td><?php echo e($loop->iteration); ?></td>
				<td><?php echo e($row->title); ?></td>
				<td><?php $__currentLoopData = $row->permissions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <span class="badge badge-info"><?php echo e($item->title); ?></span>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </td>	
				  			                                    
 <td>
<?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('edit-role')): ?> 
<a href="<?php echo e(route('edit-role',$row->id)); ?>" class="btn btn-success btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></td>
<?php endif; ?>
<form action="<?php echo e(route('roles.destroy',$row->id)); ?>" method="post">
<input type="hidden" name="_method" value="DELETE" />
<?php echo e(csrf_field()); ?>

<?php echo e(method_field('DELETE')); ?>

<td>
<?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('delete-role')): ?>
<button class="btn btn-danger btn-sm" onClick="return confirm('Are you sure you want to delete this ?');" ><i class="fa fa-trash-o" aria-hidden="true"></i></button>
</form>
<?php endif; ?>
</td>
</tr>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</tbody>
</table>
</div>
</div>
</div>
</div> 
<?php $__env->stopSection(); ?>
<?php echo $__env->make('auth.User.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\laravel-task\auth-role\resources\views/auth/User/roles/index.blade.php ENDPATH**/ ?>