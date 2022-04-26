<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\City;
use App\Models\Member;

class MemberWithCity extends Component
{
    public $members;
    public $city;
    public $cities;
    public $allMembers = false;
    public $allWithCity = false;
    public function mount($id)
    {
        $this->members = Member::with('district.city')->where('district_id', $id);
        $this->cities = City::all();
    }
    public function render()
    {
        return view('livewire.member-with-city');
    }
}
