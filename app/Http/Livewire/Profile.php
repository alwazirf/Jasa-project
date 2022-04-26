<?php

namespace App\Http\Livewire;

// use App\Http\Livewire\auth;

use Livewire\Component;

use App\Models\User;
use App\Models\Level;

class Profile extends Component
{
    public function render()
    {
        return view('livewire.profile', [
            'user' => User::has('level')->where('email', auth()->user()->email)->first(),
        ]);
    }
}
