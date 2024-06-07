<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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

Route::middleware(['auth:admin', 'Language'])->namespace('App\Http\Controllers\Admin')->prefix('admin')->group(function () {

    ///////////////////////////// Basic Routes /////////
    Route::get('/home', 'HomeController@index')->name('home');
    Route::get('/search', 'HomeController@search')->name('search');
    Route::get('/profile', 'ProfileController@show')->name('profile.show');
    Route::get('/profile/edit', 'ProfileController@edit')->name('profile.edit');
    Route::put('/profile/update/{id}', 'ProfileController@update')->name('profile.update');
    Route::get('/language/{locale}', 'LanguageController@changeLanguage')->name('change.language');

    /////////////////// Users Routes ////////////////////////////
    Route::resource('/users', 'UserController')->missing(function (Request $request) {
        return redirect()->route('users.index');
    });

    Route::resource('/courses', 'CourseController');
    Route::resource('/settings', 'SettingController');
    Route::resource('/categories', 'CategoryController');
    Route::resource('/blogs', 'BlogController');
    Route::resource('/objectives', 'ObjectiveController');
    Route::resource('/cities', 'CityController');
    Route::resource('/roles', 'RoleController');
    Route::resource('/permissions', 'PermissionController');
    Route::resource('/superskills', 'SuperSkillController');
    Route::resource('/skills', 'SkillController');
    Route::resource('/roadmaps', 'RoadmapController');
});



Auth::routes();
