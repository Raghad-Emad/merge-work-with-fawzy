<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::namespace('App\Http\Controllers\Api')->group(function () {
        Route::post('/register','AuthController@register');
        Route::post('/login','AuthController@login')->middleware('throttle:login');
        Route::post('/logout','AuthController@logout');
        Route::post('/refresh','AuthController@refresh');
        Route::get('/profile','AuthController@profile');
        Route::put('/profile-update','AuthController@profileUpdate');
    });


Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->group(function () {

        Route::apiResource('/users','UserController');
    });


Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->prefix('roadmaps')
    ->group(function () {

        Route::get('/','RoadmapController@index');
        Route::get('/show/{id}','RoadmapController@show');
    });


Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->prefix('categories')
    ->group(function () {

     Route::get('/','CategoryController@index');
     Route::get('/show/{id}','CategoryController@show');

});


Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->prefix('courses')
    ->group(function () {

        Route::get('/','CourseController@index');
        Route::get('/show/{id}','CourseController@show');
    });

Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->prefix('skills')
    ->group(function () {

        Route::get('/','SkillController@index');
        Route::get('/show/{id}','SkillController@show');
    });


Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->prefix('cities')
    ->group(function () {

        Route::get('/','CityController@index');
        Route::get('/show/{id}','CityController@show');
    });


Route::middleware(['jwt-verify','auth:api'])
    ->namespace('App\Http\Controllers\Api')
    ->prefix('super-skills')
    ->group(function () {

        Route::get('/','SuperSkillController@index');
        Route::get('/show/{id}','SuperSkillController@show');
    });


Route::middleware(['jwt-verify','auth:api'])
    ->namespace('App\Http\Controllers\Api')
    ->group(function () {

     Route::apiResource('/schedules','ScheduleController');

 });


Route::middleware(['jwt-verify','auth:api'])
    ->namespace('App\Http\Controllers\Api')
    ->group(function () {

      Route::apiResource('/attendances','AttendanceController');
});


Route::middleware(['jwt-verify','auth:api'])
    ->namespace('App\Http\Controllers\Api')
    ->prefix('settings')
    ->group(function () {

        Route::get('/','SettingController@index');
    });


Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->prefix('blogs')
    ->group(function () {
        Route::get('/','BlogController@index');
        Route::get('/show/{id}','BlogController@show');
    });

Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->group(function () {
        Route::apiResource('/sessions','SessionController');
});

Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->group(function () {

        Route::apiResource('/materials','MaterialController');
});

Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->group(function () {

        Route::apiResource('/support-requests','SupportRequestController');
});


Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->prefix('objectives')
    ->group(function () {

        Route::get('/','ObjectiveController@index');
        Route::get('/show/{id}','ObjectiveController@show');

});

Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->group(function () {

     Route::apiResource('/questions','QuestionController');
});

Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->group(function () {

     Route::apiResource('/quizzes','QuizController');
     Route::post('/quiz-user','QuizController@attach');
});

Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->group(function () {

    Route::apiResource('/portfolios','PortfolioController');
});


Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->group(function () {

        Route::apiResource('/assignments','AssignmentController');
        Route::post('/assignment-user','AssignmentController@attach');

});


Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->group(function () {

        Route::apiResource('/recordings','RecordingController');
});


Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->group(function () {

        Route::apiResource('/student-progress','StudentProgressController');

    });


Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->group(function () {

     Route::apiResource('/projects','ProjectController');

});

Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->group(function () {
        
    Route::post('/chats/{user_id}','ChatController@sendMessage');

});


Route::middleware('jwt-verify')
    ->namespace('App\Http\Controllers\Api')
    ->group(function () {
        
    Route::post('/enrollments','EnrollmentController@enroll');

});
















