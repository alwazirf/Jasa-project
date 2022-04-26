<?php

namespace App\Http\Livewire;

use Livewire\Component;

class MemberUpdate extends Component
{
    public $name;
    public $gender;
    public $place_of_born;
    public $date_of_born;
    public $city = null;
    public $district;
    public $address;
    public $number_child;
    public $number_of_sibling;
    public $status;
    public $last_education;
    public $jobs;
    public $skill;
    public $phone;
    public $email;
    public $facebook;
    public $instagram;
    public $father_name;
    public $father_address;
    public $father_place_of_born;
    public $father_date_of_born;
    public $father_place_of_death;
    public $father_date_of_death;
    public $mother_name;
    public $mother_address;
    public $mother_place_of_born;
    public $mother_date_of_born;

    public $memberId;

    protected $listeners = [
        'getMember' => 'showMember',
    ];


    public function render()
    {
        return view('livewire.member-update');
    }

    public function showMember($member)
    {
        $this->name = $member['name'];
        $this->memberId = $member['memberId'];
    }
}
