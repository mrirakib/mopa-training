<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use App\Models\NominationDetail;
use App\Models\Training;
use Auth;

class TrainingReportExport implements FromCollection, WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    protected $results;

    function __construct($results) {
        $this->results = $results;
    }

    public function collection()
    {
     	return $this->results;
    }

    public function headings(): array
    {
        return [
            'ট্রেনিয়ের নাম',
            'পরিচিতি নং',
            'নাম',
            'পদবী',
            'মোবাইল',
            'ই-মেইল',
            'বর্তমান কর্রস্থল',
        ];
    }
}
