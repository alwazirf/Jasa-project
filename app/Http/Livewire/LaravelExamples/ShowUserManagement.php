<?php

namespace App\Http\Livewire\LaravelExamples;

use Livewire\Component;
use App\Models\Member;
use App\Models\District;
use App\Models\City;


class ShowUserManagement extends Component
{

    public function mount($id)
    {
        $this->member = Member::with('district.city')->where('id', $id)->first();
    }
    public function render()
    {
        return view('livewire.laravel-examples.show-user-management');
    }
}
