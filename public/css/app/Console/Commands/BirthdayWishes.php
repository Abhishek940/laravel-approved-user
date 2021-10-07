<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendMail;
use App\User;
class BirthdayWishes extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'Birthday:wishes';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Sends a Happy birthday message to users';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
   /* public function handle()
    {
        $quotes = [
                "Happy Birthday"
        ];
         
        // Setting up a random word
        $key = array_rand($quotes);
        $data = $quotes[$key];
         
        $users = User::all();
        foreach ($users as $user) {
            Mail::raw("{$key} -> {$data}", function ($mail) use ($user) {
                $mail->from('akabhishek7485@gmail.com');
                $mail->to($user->email)
                    ->subject('Birthday wishes!');
            });
        }
         
        $this->info('Successfully sent birthday wishes!!.');
    } */
	public function handle()
    {
		
           $user = User::all();
           foreach ($user as $all)
           {
             Mail::raw("This is automatically generated Minute Update", function($message) use ($all)
             {
                 $message->from('akabhishek7485@gmail.com');
                 $message->to($all->email)->subject('Minute Update');
             });
         }
         $this->info('Minute Update has been send successfully');
    }
    
}
