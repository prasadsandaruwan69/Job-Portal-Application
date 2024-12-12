<?php

use App\Http\Controllers\ApplicantController;
use App\Http\Controllers\DashbordController;
use App\Http\Controllers\FileUploadController;
use App\Http\Controllers\JobListingController;
use App\Http\Controllers\PostJobController;
use App\Http\Controllers\SubscriptionController;
use App\Http\Controllers\userController;
use App\Http\Middleware\CheckAuth;
use App\Http\Middleware\isEmployer;

use App\Http\Middleware\isPremiumUser;
use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Auth\EmailVerificationRequest;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [JobListingController::class, 'index'])->name('listing.index');
Route::get('/company/{id}', [JobListingController::class, 'company'])->name('company');


Route::get('/jobs/{listing:slug}', [JobListingController::class, 'show'])->name('job.show');


Route::post('/resume/upload',[FileUploadController::class, 'store']);




Route::get('/email/verify/{id}/{hash}', function (EmailVerificationRequest $request) {
    $request->fulfill();

    return redirect('/login');
})->middleware(['auth', 'signed'])->name('verification.verify');


Route::get('/register/seeker', [userController::class, 'createSeeker'])->name('create.seeker')->middleware(CheckAuth::class);
Route::Post('/register/seeker', [userController::class, 'storeSeeker'])->name('store.seeker');
Route::get('/register/employer', [userController::class, 'createEmployer'])->name('create.employer')->middleware(CheckAuth::class);
Route::Post('/register/employer', [userController::class, 'storeEmployer'])->name('store.employer');



Route::get('/login', [userController::class, 'login'])->name('login')->middleware(CheckAuth::class);
Route::post('/login', [userController::class, 'postLogin'])->name('login.post');
Route::post('/logout', [userController::class, 'logout'])->name('logout');
Route::get('user/profile', [userController::class, 'profile'])->name('user.profile')->middleware('auth');
Route::post('user/profile', [userController::class, 'update'])->name('user.update.profile')->middleware('auth');
Route::get('user/profile/seeker', [userController::class, 'seekerProfile'])->name('seeker.profile')->middleware('auth','verified');

Route::get('user/profile/applied', [userController::class, 'jobApplied'])->name('job.applied')->middleware('auth','verified');





Route::post('user/password', [userController::class, 'changePassword'])->name('user.password')->middleware('auth');
Route::post('uplord/resume', [userController::class, 'uplordResume'])->name('uplord.resume')->middleware('auth');




Route::get('/dashbord', [DashbordController::class, 'index'])
    ->middleware(['verified', isPremiumUser::class])
    ->name('dashbord');





Route::get('/verify', [DashbordController::class, 'verify'])->name('verification.notice');

Route::get('/resend/verification/email', [DashbordController::class, 'resend'])->name('resend.email');




Route::get('subscribe', [SubscriptionController::class, 'subscribe'])->name('subscribe');
Route::get('pay/weekly', [SubscriptionController::class, 'initiatePayment'])->name('pay.weekly');
Route::get('pay/monthly', [SubscriptionController::class, 'initiatePayment'])->name('pay.monthly');
Route::get('pay/yearly', [SubscriptionController::class, 'initiatePayment'])->name('pay.yearly');
Route::get('payment/success', [SubscriptionController::class, 'paymentSuccess'])->name('payment.success');
Route::get('payment/cancel', [SubscriptionController::class, 'cancel'])->name('payment.cancel');

Route::get('job/create', [PostJobController::class, 'create'])->name('job.create');
Route::post('job/store', [PostJobController::class, 'store'])->name('job.store');
Route::get('job/{listing}/edit', [PostJobController::class, 'edit'])->name('job.edit');
Route::put('job/{id}/edit', [PostJobController::class, 'update'])->name('job.update');
Route::get('job', [PostJobController::class, 'index'])->name('job.index');
Route::delete('job/{id}/delete', [PostJobController::class, 'destroy'])->name('job.delete');


Route::get('applicants', [ApplicantController::class, 'index'])->name('applicants.index');
Route::get('applicants/{listing:slug}', [ApplicantController::class, 'show'])->name('applicants.show');

Route::post('shortlist/{listingId}/{userId}', [ApplicantController::class, 'shortlist'])->name('applicants.shortlist');


// error handling
Route::post('application/{listingId}/submit',[ApplicantController::class, 'apply'])->name('application.submit'); 