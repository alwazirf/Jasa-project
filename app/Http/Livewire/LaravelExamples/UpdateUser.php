<?php

namespace App\Http\Livewire\LaravelExamples;

use Livewire\Component;
use App\Models\City;
use App\Models\District;
use App\Models\Member;

class UpdateUser extends Component
{
    public $name;
    public $memberId;

    public $cities;
    public $districts;

    public function mount()
    {
        $this->cities = City::all();
        $this->districts = collect();
    }

    // protected $listeners = ['getMember' => 'dataMember'];
    protected function getListeners()
    {
        ['getMember' => 'dataMember'];
    }

    public function render()
    {
        return view('livewire.laravel-examples.update-user');
    }

    public function dataMember($member)
    {
        $this->emit("foo", $member);
    }
}
