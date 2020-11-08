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

// Route::get('/', function () {
//     return view('welcome');
// });

// Auth::routes(['verify' => true]);

Auth::routes([
  'register' => true, // Registration Routes...
  'reset' => false, // Password Reset Routes...
  'verify' => false, // Email Verification Routes...
]);

Route::get('/home', 'TrainingController@index')->name('home');
Route::get('/', 'TrainingController@index')->name('home');
Route::resource('training','TrainingController');

Route::get('/publishTraining/{id}', 'TrainingController@publishTraining')->name('publishTraining');
Route::get('/closeTraining/{id}', 'TrainingController@closeTraining')->name('closeTraining');
Route::get('/deleteTraining/{id}', 'TrainingController@deleteTraining')->name('deleteTraining');
Route::get('/nominationTraining/{id}', 'TrainingController@nominationTraining')->name('nominationTraining');
Route::get('/training-make-final/{id}', 'TrainingController@trainingMakeFinal')->name('training-make-final');


Route::get('/change-password', 'Auth\ChangePasswordController@index')->name('password.change');
Route::post('/change-password', 'Auth\ChangePasswordController@update')->name('password2.update');

Route::get('/reset-password/{id}', 'Auth\ChangePasswordController@index2')->name('password.reset');
Route::post('/reset-password', 'Auth\ChangePasswordController@update2')->name('password2.reset');

Route::get('/getAdminUserList', 'TrainingController@getAdminUserList');
Route::get('/trainingdetails/{id}', 'TrainingController@trainingdetails');

Route::resource('/userlist', 'UserController');
Route::get('/user-password-reset/{id}', 'UserController@userPasswordReset');
Route::post('/user-password-reset', 'UserController@user-password-reset');


Route::resource('nomination','NominationController');
Route::post('/candidate-selection', 'NominationController@candidateSelection')->name('candidate-selection');

Route::resource('trainingType','TrainingTypeController');


Route::resource('goInformationTemplate','GOInformationTemplateController');
Route::resource('goInformation','GOInformationController');

Route::resource('goInformationTemplateEnglish','GOInformationTemplateEnglishController');
Route::resource('goInformationEnglish','GOInformationEnglishController');

Route::get('goInformation/create/{id}','GOInformationController@create')->name('goInformation.create');
Route::get('goInformationEnglish/create/{id}','GOInformationEnglishController@create')->name('goInformationEnglish.create');

Route::get('/training-govt-order/{id}','PDFController@training_govt_order');
Route::get('/training-govt-order-temp/{id}','PDFController@training_govt_order_temp');

Route::get('/training-govt-order-english/{id}','PDFController@training_govt_order_english');
Route::get('/training-govt-order-temp-english/{id}','PDFController@training_govt_order_temp_english');
// Route::get('/training-govt-order2/{id}','PDFController@training_govt_order2');

Route::post('/training-report-print','PDFController@training_report_print');

Route::resource('/userProfile', 'UserProfileController');

Route::resource('/report', 'ReportController');
Route::resource('/go', 'GOController');

// Route::get('selected_candidate_list', 'PDFController@index')->name('selected_candidate_list');

Route::get('/candidate-list-export/{training_id}', 'PDFController@candidate_list_export');
Route::post('/training-report-export', 'PDFController@training_report_export');