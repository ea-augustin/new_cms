<?php

use Illuminate\Support\Facades\Route;

//Ensures users are logging in before accessing the information
Route::middleware('auth')->group(function () {
     
    Route::delete('/users/{user}/destroy', 'UserController@destroy')->name('user.destroy');
   
    Route::put('/users/{user}/update', 'UserController@update')->name('user.profile.update');

   // Route::get('/users/{user}/edit','UserController@edit')->name('users.edit');
});


Route::middleware('role:admin')->group(function () {
    Route::get('/users', 'UserController@index')->name('users.index');
    Route::put('/users/{user}/attach', 'UserController@attach')->name('user.role.attach');
    Route::put('/users/{user}/detach', 'UserController@detach')->name('user.role.detach');
    //Route::get('/users/{user}/edit', 'UserController@edit')->name('users.');
    Route::get('/users/{user}/edit','UserController@edit')->name('users.edit');
    Route::put('/users/{user}/updated','UserController@update')->name('users.update');
   // Route::put('/users/{user}/update', 'UserController@update')->name('user.profile.update');
});

Route::middleware(['can:view,user'])->group(function () {
    Route::get('/users/{user}/profile', 'UserController@show')->name('user.profile.show');
});
