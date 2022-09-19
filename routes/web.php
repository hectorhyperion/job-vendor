<?php

use App\Http\Controllers\ListingController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

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

Route::get('/',  [ListingController::class, 'index']);
//show create form
Route::get('/listing/create', [ListingController::class, 'create'])->middleware('auth');
//store data
Route::post('/listing', [ListingController::class, 'store'])->middleware('auth');
//show edit form
Route::get('/listing/{listings}/edit', [ListingController::class, 'edit'])->middleware('auth');

// Update Listing
Route::put('/listing/{listings}/', [ListingController::class , 'update'])->middleware('auth');;
//delete
Route::delete('/listing/{listings}/',[ListingController::class, 'delete'])->middleware('auth');

//Manage Listings
Route::get('/listing/manage', [ListingController::class, 'manage'])->middleware('auth');
//job listing per page
Route::get('/listing/{id}/', [ListingController::class, 'job']);

//show register form
Route::get('/register', [UserController::class, 'create'])->middleware('guest');
//creat new users
Route::post('/users', [UserController::class, 'store']);
//logout
Route::post('/logout',[UserController::class, 'logout'])->middleware('auth');
//show login form
Route::get('/login', [UserController::class, 'login'])->name('login')->middleware('guest');
//login User
Route::post('/users/authenticate', [UserController::class, 'authenticate']);

