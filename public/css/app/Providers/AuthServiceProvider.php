<?php
namespace App\Providers;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use Laravel\Passport\Passport;
use Carbon\Carbon;
use App\Admin;
class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\Model' => 'App\Policies\AdminPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        //if (!app()->runningInConsole()) {
          //  Passport::routes();
        //};
		
		 /* define a admin user role */
       // Gate::define('isAdmin', function($user) {
         //  return $user->role == 'Admin';
        //});
		Gate::define('isAdmin', function($user) {
           return $user->roles == 'Admin';
        });
		        
		
    }
}
