<?php

namespace App\Exports;
use DB;
use App\TimeEntry;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;
class EmployeeAttandanceExport implements FromCollection, WithHeadings, ShouldAutoSize, WithEvents

{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        //return TimeEntry::all();
		return  DB::table('time_entries')
              ->join('users', 'users.id', '=', 'time_entries.user_id')
              ->select('time_entries.user_id','users.name','time_entries.time_start','time_entries.time_end')
             ->get();
    }
	public function headings(): array
    {
        return [
           	'Emp Id',
            'Name',
            'Time Start',
			 'Time End'
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
