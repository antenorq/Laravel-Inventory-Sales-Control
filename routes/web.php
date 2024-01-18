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

Route::get('/', function () {
    return view('auth.login');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('users','UserController');

Route::resource('products','ProductController');
Route::get('/products-datatable', 'ProductController@datatable')->name("products.datatable");

Route::resource('customers','CustomerController');
Route::get('/customers-datatable', 'CustomerController@datatable')->name("customers.datatable");

Route::resource('sales-people','SalesPersonController');
Route::get('/sales-people-datatable', 'SalesPersonController@datatable')->name("sales-people.datatable");

Route::resource('sales','SaleController');
Route::get('/sales-datatable', 'SaleController@datatable')->name("sales.datatable");

Route::resource('categories','CategoryController');
Route::get('/categories-datatable', 'CategoryController@datatable')->name("categories.datatable");

