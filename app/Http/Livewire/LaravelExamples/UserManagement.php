<?php

namespace App\Http\Livewire\LaravelExamples;

use App\Exports\UsersExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\File;



use Livewire\Component;
use App\Models\Member;
use App\Models\City;
use App\Models\District;
use Livewire\WithPagination;
use Barryvdh\DomPDF\Facade\Pdf;
// use PDF;

class UserManagement extends Component
{
    public $data = [];
    public $cities;
    public $districts;
    public $search;
    public $searchkab;

    public $district;
    public $city;
    use WithPagination;
    protected $paginationTheme = 'bootstrap';

    protected $updatesQueryString = ['search'];

    public function mount()
    {
        $this->search = request()->query('search', $this->search);
        $this->cities = City::all();
        $this->districts = collect();
    }

    public function render()
    {
        return view('livewire.laravel-examples.user-management', [
            'members' => $this->search === null ?
                Member::with('district.city')->latest()->paginate(10) :
                Member::With('district.city')->latest()
                ->where('name', 'like', '%' . $this->search . '%')
                ->Orwhere('email', 'like', '%' . $this->search . '%')
                ->Orwhere('gender', 'like', '%' . $this->search . '%')
                ->paginate(10),
        ]);
    }

    public function updatingSearch()
    {
        $this->resetPage();
    }

    public function updatedCity($value)
    {
        $this->districts = District::where('city_id', $value)->get();
        $this->district = $this->districts->first()->id ?? null;
    }

    public function getMemberData($id)
    {
        $member = Member::find($id);
        $this->emit('getMemberData', $member);
    }


    public function destroy($id)
    {
        if ($id) {
            $data = Member::find($id);
            $destination = public_path('storage\\' . $data->image);
            if (File::exists($destination)) {
                File::delete($destination);
            }
            $data->delete();
            session()->flash('message', 'Data ' . $data->name . ' telah terhapus!');
        }
    }

    public function downloadPdf()
    {
        $members = ['members' => Member::all()];
        $pdf = PDF::loadView('livewire.laravel-examples.user-management-pdf', $members)->output();
        return response()->streamDownload(
            fn () => print($pdf),
            "filename.pdf"
        );
    }

    public function export()
    {
        return Excel::download(new UsersExport, 'member.xlsx');
    }
}
