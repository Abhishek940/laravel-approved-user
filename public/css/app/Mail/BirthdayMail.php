<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class BirthdayMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
	  public $birthday;
	  
    public function __construct($birthday)
    {
         $this->birthday = $birthday;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
       return $this->subject('Birthday Wishes')->view('emails.birthday');
		//return $this->from('john@webslesson.info')->subject('New Customer Equiry')
		//->view('dynamic_email_template')->with('data', $this->data);
    }
}
