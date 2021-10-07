<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Auth\User\UsersController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Auth\Admin\EmployeeController;
use App\Http\Controllers\Auth\Admin\PermissionController;
use App\Http\Controllers\Auth\Admin\RoleController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('login');
})
->middleware(['auth','ApprovalMiddleware']);

Route::middleware(['middleware'=>'PreventBackHistory'])->group(function () {
    Auth::routes();
});
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::group(['prefix'=>'admin', 'middleware'=>['isAdmin','auth','PreventBackHistory']], function(){
Route::get('dashboard',[App\Http\Controllers\Auth\Admin\AdminController::class,'index'])->name('admin.dashboard');
Route::get('/logout', [App\Http\Controllers\Auth\Admin\AdminController::class,'logout'])->name('admin.logout');        
Route::resource('user', 'Auth\Admin\EmployeeController');
Route::get('/approved/user/{id}', [App\Http\Controllers\Auth\Admin\AdminController::class,'approveduser'])->name('admin.approved-user');
//-------------------Role And Permission Crud---------------------------------------------------------------
Route::resource('permissions', 'Auth\Admin\PermissionsController');
Route::resource('roles', 'Auth\Admin\RolesController');
//-----------------End Role and Permission Crud--------------------------------------------------- //  
//-------------------Change Password----------------------------------------------------------------------->
Route::get('/change/password', [App\Http\Controllers\Auth\Admin\AdminController::class,'changePassword'])->name('admin.change-password');
Route::post('/change/password', [App\Http\Controllers\Auth\Admin\AdminController::class,'UpdatePassword'])->name('admin.update-password');
});
//--------------User Area-------------------------------->
Route::group(['prefix'=>'user', 'middleware'=>['isUser','auth','PreventBackHistory']], function(){
Route::get('dashboard',[App\Http\Controllers\Auth\User\UsersController::class,'dashboard'])->name('user.dashboard');
Route::get('/logout', [App\Http\Controllers\Auth\User\UsersController::class,'logout'])->name('user.logout');       
Route::get('/user/list', [App\Http\Controllers\Auth\User\UsersController::class,'index'])->name('user-list');
Route::get('/approved/user/{id}', [App\Http\Controllers\Auth\User\UsersController::class,'approveduser'])->name('approved-user');
//---------------Role------------------------------
Route::get('/create/role', [App\Http\Controllers\Auth\User\UsersController::class,'Createrole'])->name('create-role');
Route::post('/create/role', [App\Http\Controllers\Auth\User\UsersController::class,'submitrole'])->name('role-submit');
Route::get('/role/list', [App\Http\Controllers\Auth\User\UsersController::class,'rolelist'])->name('role-list');
//---------------permission------------------------------
Route::get('/create/permission', [App\Http\Controllers\Auth\User\UsersController::class,'Createpermission'])->name('create-permission');
Route::post('/create/permission', [App\Http\Controllers\Auth\User\UsersController::class,'submitpermission'])->name('permission-submit');
Route::get('/permission/list', [App\Http\Controllers\Auth\User\UsersController::class,'permissionlist'])->name('permission-list');

//-------------------Change Password---------------------->
Route::get('/change/password', [App\Http\Controllers\Auth\User\UsersController::class,'changePassword'])->name('user.change-password');
Route::post('/change/password', [App\Http\Controllers\Auth\User\UsersController::class,'UpdatePassword'])->name('user.update-password');
});
Route::get('/register', [App\Http\Controllers\Auth\User\UsersController::class,'userregister'])->name('user-register');
Route::post('/submit', [App\Http\Controllers\Auth\User\UsersController::class,'submit'])->name('user-submit');    
