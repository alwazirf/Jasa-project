<?php

namespace App\Http\Livewire\LaravelExamples;

use App\Models\User;
use App\Models\District;
use App\Models\Level;

use Livewire\Component;

class UserProfile extends Component
{
    public User $user;
    public $cities;
    public $districts;
    public $levels;
    public $showSuccesNotification  = false;

    public $showDemoNotification = false;

    protected $rules = [
        'user.name' => 'max:40|min:3',
        'user.email' => 'email:rfc,dns',
        'user.city_id' => 'min:1',
        'user.level_id' => 'min:1',
    ];

    public function mount()
    {
        $this->districts = District::all();
        $this->levels = Level::all();
        $this->user = auth()->user();
    }

    public function save()
    {
        $this->validate();
        $this->user->save();
        $this->showSuccesNotification = true;
        return redirect()->intended('/user-login');
    }
    public function render()
    {
        return view('livewire.laravel-examples.user-profile');
    }
}
