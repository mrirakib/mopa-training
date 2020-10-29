<?php

namespace App\Exports;

use App\Models\NominationDetail;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class CandidateListExport implements FromCollection, WithHeadings
{
	/**
    * @return \Illuminate\Support\Collection
    */
    // public function collection()
    // {
    //     return NominationDetail::all();
    // }

    protected $training_id;

    function __construct($training_id) {
        $this->training_id = $training_id;
    }

    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return NominationDetail::where('training_id', $this->training_id)->where('status', 1)->where('deleted_at', null)->get([
            'id_no', 'name', 'name_bangla', 'designation', 'designation_bangla', 'contact_no', 'email', 'working_place'
        ]);
    }

    public function headings(): array
    {
        return [
            'Id',
            'Name',
            'Name Bangla',
            'Designation',
            'Designation Bangla',
            'Contact_no',
            'Email',
            'Working Place',
        ];
    }
}
