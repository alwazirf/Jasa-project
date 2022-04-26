<?php

namespace App\Http\Livewire\LaravelExamples\SubAdmin;

use Livewire\Component;
use App\Models\Member;

class MemberDataShow extends Component
{
    public function mount($id)
    {
        $this->member = Member::with('district.city')->where('id', $id)->first();
    }
    public function render()
    {
        return view('livewire.laravel-examples.sub-admin.member-data-show');
    }
}
