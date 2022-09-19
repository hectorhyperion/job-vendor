<?php

use App\Http\Controllers\ListingController;
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
Route::get('/listing/create', [ListingController::class, 'create']);
//store data
Route::post('/listing', [ListingController::class, 'store']);
//show edit form
Route::get('/listing/{listings}/edit', [ListingController::class, 'edit']);

// Update Listing
Route::put('/listing/{listings}/', [ListingController::class , 'update']);
//delete
Route::delete('/listing/{listings}/',[ListingController::class, 'delete']);
//job listing per page
Route::get('/listing/{id}/', [ListingController::class, 'job']);
