<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/student', 'StudentController@index');
Route::get('/student/{student}', 'StudentController@show');
Route::post('/student', 'StudentController@store');
Route::patch('/student/{student}', 'StudentController@update');
Route::delete('/student/{student}', 'StudentController@destroy');

Route::get('/course', 'CourseController@index');
Route::get('/course/{course}', 'CourseController@show');
Route::post('/course', 'CourseController@store');
Route::patch('/course/{course}', 'CourseController@update');
Route::delete('/course/{course}', 'CourseController@destroy');
