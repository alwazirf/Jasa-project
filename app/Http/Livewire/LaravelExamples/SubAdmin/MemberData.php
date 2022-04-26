<?php

namespace App\Http\Livewire\LaravelExamples\SubAdmin;

use Illuminate\Support\Facades\DB;

use Illuminate\Support\Facades\File;

use Livewire\Component;
use App\Models\Member;
use App\Models\City;
use App\Models\District;
use App\Models\User;
use Livewire\WithPagination;




class MemberData extends Component
{
    use WithPagination;
    public $search;
    protected $paginationTheme = 'bootstrap';
    protected $updatesQueryString = ['search'];
    public $cities;
    public $districts = '';
    public $data;
    public $users;

    public function mount()
    {
        $this->search = request()->query('search', $this->search);
    }

    public function render()
    {
        return view('livewire.laravel-examples.sub-admin.member-data', [
            'members' => $this->search === null ?
                Member::select('members.*')->with('district.city')->latest()
                ->join('districts', 'members.district_id', 'districts.id')
                ->where('districts.city_id', '=', auth()->user()->city_id)
                ->paginate(10) :
                Member::select('members.*')->with('district.city')->latest()
                ->join('districts', 'members.district_id', 'districts.id')
                ->where(function ($query) {
                    $query->where('members.email', 'like', '%' . $this->search . '%')
                        ->Orwhere('members.name', 'like', '%' . $this->search . '%')
                        ->Orwhere('members.gender', 'like', '%' . $this->search . '%');
                })
                ->where('districts.city_id', '=', auth()->user()->city_id)
                ->paginate(10)
        ]);
    }

    public function updatingSearch()
    {
        $this->resetPage();
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
}
