<?php

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

Route::get('/', 'BlogsController@trangchu') ;
Route::get('/bai-viet/{id}', 'BlogsController@baiviet') ;
Route::get('/tim-kiem', 'BlogsController@timkiem') ;
// Route::get('/danh-muc-tin-tuc', function () {
//     return view('pages.blogs');
// });
// Route::get('/tin-tuc/{id}', function ($id) {
//     return view('pages.details');
// });

Route::resource('/blogs', 'BlogsController');
Route::resource('/category', 'CategoryController');
Route::resource('/post', 'PostController');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
