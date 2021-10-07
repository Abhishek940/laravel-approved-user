<?php

namespace Database\Seeders;
use Illuminate\Database\Seeder;
use App\Models\User;

class AdminUsersDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       User::create([
	        'user_type'=> 'admin', 
		    'name' => 'admin',
		    'mobile'=>'7896541230',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('123456'),
            'address' =>  'Patna',
        ]);
		User::create([
		    'user_type'=> 'admin', 
		    'name' => 'abhishek',
			'mobile'=>'9563241078',
            'email' => 'abhishek@gmail.com',
            'password' => bcrypt('123456'),
            'address'=>'Patna',
        ]);
    }
}
