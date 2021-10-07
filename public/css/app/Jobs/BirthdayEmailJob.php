<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use App\Mail\BirthdayMail;
use Mail;
use App\User;
class BirthdayEmailJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

      public $birthday;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($birthday)
    {
        $this->birthday = $birthday;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $email = new BirthdayMail();
        Mail::to($this->birthday['email'])->send($email);
	    //Mail::to('akabhishek0089@gmail.com')->send($email);
    }
}
