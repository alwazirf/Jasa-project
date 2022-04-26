<?php

use App\Http\Livewire\Billing;
use App\Http\Livewire\Profile;
use App\Http\Livewire\Dashboard;
use App\Http\Livewire\Auth\Login;
use App\Http\Livewire\MemberWithCity;

use Illuminate\Support\Facades\Route;
use App\Http\Livewire\LaravelExamples\UserEdit;

use App\Http\Livewire\LaravelExamples\UserShow;
use App\Http\Livewire\LaravelExamples\UserLogin;
use App\Http\Livewire\LaravelExamples\UserCreate;
use App\Http\Livewire\LaravelExamples\UserProfile;
use App\Http\Livewire\LivewireExamples\ExportExcel;
use App\Http\Livewire\LaravelExamples\MemberWilayah;
use App\Http\Livewire\LaravelExamples\UserManagement;
use App\Http\Livewire\LaravelExamples\UserResetPassword;
use App\Http\Livewire\LaravelExamples\EditUserManagement;
use App\Http\Livewire\LaravelExamples\ShowUserManagement;
use App\Http\Livewire\LaravelExamples\SubAdmin\MemberData;
use App\Http\Livewire\LaravelExamples\CreateUserManagement;
use App\Http\Livewire\LaravelExamples\SubAdmin\MemberDataEdit;
use App\Http\Livewire\LaravelExamples\SubAdmin\MemberDataShow;
use App\Http\Livewire\LaravelExamples\SubAdmin\MemberDataCreate;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', Login::class)->name('login');

Route::get('/login', Login::class)->name('login');

Route::middleware('auth')->group(function () {
    Route::get('/dashboard', Dashboard::class)->name('dashboard');
    Route::get('/profile', Profile::class)->name('profile');
    Route::get('/reset-password/{id}', UserResetPassword::class)->name('reset-password');
    Route::get('/member-data', MemberData::class)->name('member-data');
    Route::get('/member-data-create', MemberDataCreate::class)->name('member-kec-create');
    Route::get('/member-data-show/{id}', MemberDataShow::class)->name('member-kec-show');
    Route::get('/member-data-edit/{id}', MemberDataEdit::class)->name('member-kec-edit');
});

Route::middleware(['auth', 'is_admin'])->group(function () {
    Route::get('/card', Billing::class)->name('card');
    Route::view('/welcome', 'billing-pdf.blade');
    Route::get('/laravel-user-profile', UserProfile::class)->name('user-profile');
    Route::get('/member-management', UserManagement::class)->name('member-management');
    Route::get('/create-member', CreateUserManagement::class)->name('member-create');
    Route::get('/show-member/{id}', ShowUserManagement::class)->name('member-show');
    Route::get('/edit-member/{id}', EditUserManagement::class)->name('member-edit');
    Route::get('/user-management', UserLogin::class)->name('user-management');
    Route::get('/user-create', UserCreate::class)->name('user-create');
    Route::get('/user-show/{id}', UserShow::class)->name('user-show');
    Route::get('/user-edit/{id}', UserEdit::class)->name('user-edit');
});
