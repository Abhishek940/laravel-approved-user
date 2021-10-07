<?php
namespace Database\Seeders;
use Illuminate\Database\Seeder;
use App\Models\Admin;
class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Admin::create([
		    'name' => 'admin',
		    'mobile'=>'7896541230',
            'email' => 'admin@gmail.com',
            'password' => bcrypt('123456'),
            'address' =>  'Patna',
        ]);
		Admin::create([
		    'name' => 'abhishek',
			'mobile'=>'9563241078',
            'email' => 'abhishek@gmail.com',
            'password' => bcrypt('123456'),
            'address'=>'Patna',
        ]);
    }
}
