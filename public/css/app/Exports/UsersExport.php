<?php

namespace App\Exports;
use DB;
use App\User;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;
class UsersExport implements FromCollection, WithHeadings, ShouldAutoSize, WithEvents
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        //return User::all();
	   
	 return  DB::table('users')->select('id','name','mobile','email','gender','designation','department','joining_date',
	 'address','pre_company_name','pre_designation','pre_department','from_date','to_date','description')->get();
    }
	public function headings(): array
    {
        return [
		    'Emp Id',
            'Name',
            'Mobile No.',
			'Email Id',
			'Gender',
			'Designation',
			'Department',
			'Joining Date',
			'Address',
			'Previous Company',
			'Designation',
			'Department',
			'From Date',
			'To Date',
			'Description',
            //'Created at',
            //'Updated at'
        ];
    }
	public function registerEvents(): array
    {
        return [
            AfterSheet::class    => function(AfterSheet $event) {
                $cellRange = 'A1:W1'; // All headers
                $event->sheet->getDelegate()->getStyle($cellRange)->getFont()->setSize(14);
            },
        ];
    }
}
