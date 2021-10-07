
<?php $__env->startSection('title', 'User list'); ?>
<?php $__env->startSection('content'); ?>

<div class="app-title">
<div>
<h1><i class="fa fa-th-list"></i>&nbsp;User list</h1>
</div>
<ul class="app-breadcrumb breadcrumb side">
<li class="breadcrumb-item">
<a href="<?php echo e(route('admin.dashboard')); ?>"><i class="fa fa-home fa-lg"></a></i>
</li>

<li class="breadcrumb-item active">User list</li>
</ul>
</div> 
<?php echo $__env->make('auth.Admin.flash-message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  <div class="row" style="height:500px">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <table class="table table-hover table-bordered" id="sampleTable">
                <thead>
                  <tr>
				     <th>S.no</th>
                    <th>Name</th>
                    <th>Mobile No</th>
                    <th>Email Id</th>
                    <th>Role</th>
					<th></th>
				    <th>Edit</th>
					<th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                <?php $__currentLoopData = $user; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			
                 <tr>
				 <td><?php echo e($loop->iteration); ?></td>
				<td><?php echo e(ucwords($row->name)); ?></td>
				<td><?php echo e($row->mobile); ?></td>
				<td><?php echo e($row->email); ?></td>
				<td>
        <?php $__currentLoopData = $row->roles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <span class="badge badge-info"><?php echo e($item->title); ?></span>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </td>
<td>
<?php if($row->approved=='0'): ?>
<a href="<?php echo e(route('admin.approved-user',$row->id)); ?>" class="btn btn-danger btn-sm">Pending</a>
<?php elseif($row->approved=='1'): ?>
<a href="<?php echo e(route('admin.approved-user',$row->id)); ?>" class="btn btn-success btn-sm">Approved</a>
<?php endif; ?>
</td>  		
<td>
<a href="<?php echo e(route('user.edit',$row->id)); ?>" class="btn btn-success btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
</td>
<form action="<?php echo e(route('user.destroy',$row->id)); ?>" method="post">
<input type="hidden" name="_method" value="DELETE" />
 <?php echo e(csrf_field()); ?>

<?php echo e(method_field('DELETE')); ?>

<td>
<button class="btn btn-danger btn-sm" onClick="return confirm('Are you sure you want to delete this ?');" ><i class="fa fa-trash-o" aria-hidden="true"></i>
</button>
</form>
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
<?php echo $__env->make('auth.Admin.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\laravel-task\laravel-task\resources\views/auth/Admin/user/index.blade.php ENDPATH**/ ?>