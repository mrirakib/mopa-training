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

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/', 'HomeController@index')->name('home');

Route::get('/traininglist', 'TrainingController@index')->name('traininglist');

// Route::get('/home', 'TrainingController@index')->name('home');
// Route::get('/', 'TrainingController@index')->name('home');


Route::resource('training','TrainingController');

Route::get('/publishTraining/{id}', 'TrainingController@publishTraining')->name('publishTraining');
Route::get('/closeTraining/{id}', 'TrainingController@closeTraining')->name('closeTraining');
Route::get('/deleteTraining/{id}', 'TrainingController@deleteTraining')->name('deleteTraining');
Route::get('/nominationTraining/{id}', 'TrainingController@nominationTraining')->name('nominationTraining');
Route::get('/nominationTrainingShow/{id}', 'TrainingController@nominationTrainingShow')->name('nominationTrainingShow');
Route::get('/nominationTrainingSendToApprovalAuthority/{id}', 'TrainingController@nominationTrainingSendToApprovalAuthority')->name('nominationTrainingSendToApprovalAuthority');
Route::get('/nominationTrainingApprovedAndSendToAdmin/{id}', 'TrainingController@nominationTrainingApprovedAndSendToAdmin')->name('nominationTrainingApprovedAndSendToAdmin');
Route::post('/nominationTrainingApproveDraft', 'TrainingController@nominationTrainingApproveDraft')->name('nominationTrainingApproveDraft');

Route::get('/training-make-final/{id}', 'TrainingController@trainingMakeFinal')->name('training-make-final');


Route::get('/change-password', 'Auth\ChangePasswordController@index')->name('password.change');
Route::post('/change-password', 'Auth\ChangePasswordController@update')->name('password2.update');

Route::get('/reset-password/{id}', 'Auth\ChangePasswordController@index2')->name('password.reset');
Route::post('/reset-password', 'Auth\ChangePasswordController@update2')->name('password2.reset');

// Route::get('/getAdminUserList', 'TrainingController@getAdminUserList');
Route::get('/trainingdetails/{id}', 'TrainingController@trainingdetails');

Route::resource('/userlist', 'UserController');
Route::get('/user-password-reset/{id}', 'UserController@userPasswordReset');
Route::post('/user-password-reset', 'UserController@user-password-reset');


Route::resource('nomination','NominationController');
Route::post('/candidate-selection', 'NominationController@candidateSelection')->name('candidate-selection');

Route::resource('organization','OrganizationController');


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
Route::post('/training-report-print2','PDFController@training_report_print2');

Route::resource('/userProfile', 'UserProfileController');

Route::resource('/report', 'ReportController');
Route::get('/report2', 'ReportController@index2');
Route::post('/report2', 'ReportController@store2');
Route::resource('/go', 'GOController');

Route::get('/getGOInfo', 'ReportController@getGOInfo');

// Route::get('selected_candidate_list', 'PDFController@index')->name('selected_candidate_list');

Route::get('/candidate-list-export/{training_id}', 'PDFController@candidate_list_export');
Route::post('/training-report-export', 'PDFController@training_report_export');

Route::resource('/userInstitute', 'UserInstituteController');
Route::get('/get-user-institute-info','UserInstituteController@getUserInstituteInfo');

Route::resource('/trainingCalender', 'TrainingCalenderController');
Route::get('/trainingCalender/{id}/publish', 'TrainingCalenderController@trainingCalenderPublish');


Route::resource('/entry-user-approval-authority', 'EntryUserApprovalAuthorityMappingController');
Route::get('/get-approval-authority-info','EntryUserApprovalAuthorityMappingController@getApprovalAuthorityInfo');