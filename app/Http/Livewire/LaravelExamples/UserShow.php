<?php

namespace App\Http\Livewire\LaravelExamples;

use Livewire\Component;
use App\Models\User;

class UserShow extends Component
{
    public function mount($id)
    {
        $this->user = User::find($id);
    }
    public function render()
    {
        return view('livewire.laravel-examples.user-show');
    }
}
