<?php

use Illuminate\Support\Facades\Route;

//Ensures users are logging in before accessing the information
Route::middleware('auth')->group(function () {
     
    Route::delete('/users/{user}/destroy', 'UserController@destroy')->name('user.destroy');
   
    Route::put('/users/{user}/update', 'UserController@update')->name('user.profile.update');
});
Route::middleware('role:admin')->group(function () {
    Route::get('/users', 'UserController@index')->name('users.index');
});

Route::middleware(['can:view,user'])->group(function () {
    Route::get('/users/{user}/profile', 'UserController@show')->name('user.profile.show');
});
