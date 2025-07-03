<?php

use App\Http\Controllers\MailController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\CustomForgotPasswordController;
use App\Http\Middleware\TrackFailedLoginAttempts;
use Illuminate\Support\Facades\Route;


//------Reset Password Route
Route::get('/forgot-password', function () {
    return view('auth.forgot-password');
})->middleware('guest')->name('password.request');
Route::post('/forgot-password', [CustomForgotPasswordController::class, 'forgotPassword'])
    ->middleware('guest')
    ->name('password.email');
Route::get('/reset-password/{token}/{email}', function ($token,$email) {
    return view('auth.user-reset-password', ['token' => $token , 'email' => $email]);
})->middleware('guest')->name('password.reset');
Route::post('/reset-password', [CustomForgotPasswordController::class, 'resetPassword'])
    ->middleware('guest')
    ->name('password.update');

// -----Login Routes
    Route::get('/', [AuthController::class, 'home'])->name('home');
    Route::get('/signin', [AuthController::class, 'signin'])
    ->name('signin');
    Route::get('/signin', [AuthController::class, 'signin'])
    ->name('login');
    Route::post('signin/store',[AuthController::class, 'signinAction'])
    ->name('signin.action');
    Route::get('signup', [AuthController::class, 'signup'])
    ->name('signup');
    Route::post('signup', [AuthController::class,'signupAction'])
    ->name('signup.action');
    Route::get('logout', [AuthController::class, 'logout'])->middleware('auth')
    ->name('logout');


    //----send mail route
    Route::get('send-mail', [MailController::class, 'index'])
    ->name('send-mail');    
    Route::get('subscribe-newsletter', [MailController::class, 'subscribeNewsletter'])
    ->name('subscribe-newsletter');

    //===========Verify email address routes================================
    Route::get('email-verify', [MailController::class, 'emailVerify'])
    ->name('email-verify');
    Route::get('email-verify-done/{token}', [MailController::class, 'emailVerifyDone'])
    ->name('email-verify-done');
    Route::get('resend-verification-email', [MailController::class, 'resendEmailVerification'])
    ->name('resend-verification-email');
    Route::post('resend-verification', [MailController::class, 'resendVerification'])
    ->name('resend-verification');
    Route::post('email-not-verify', [MailController::class, 'emailNotVerify'])
    ->name('email-not-verify');

    //----Dashboard routes-----------------
     Route::middleware('auth')->group(function () {
     Route::get('user/feed', [DashboardController::class, 'index'])
        ->name('user-feed');
     Route::post('/posts/comment', [PostController::class, 'commentPost'])
        ->name('post.comment');
     Route::post('/posts/like', [PostController::class, 'likePost'])
        ->name('post.like');
    Route::get('/posts/{id}/refresh', [PostController::class, 'refreshPostSections'])
    ->name('post.refresh');
    Route::get('/posts/{id}/comments', [PostController::class, 'loadAllComments'])
    ->name('post.comments.all');
});

// Route::get('/', function () {
//     return view('welcome');
// });
