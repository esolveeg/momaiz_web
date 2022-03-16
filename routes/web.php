<?php

use App\Http\Controllers\PagesController;
use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
// Route::redirect('/', '/en');
Route::prefix('{locale?}')->middleware('localization')->group(function () {
    Route::get('/', [PagesController::class, 'homePage'])->name('home');
    Route::get('/about', [PagesController::class, 'aboutPage'])->name('about');
    Route::get('/departments', [PagesController::class, 'departmentsPage'])->name('departments');
    Route::get('/careers', [PagesController::class, 'careersPage'])->name('careers');
    Route::get('/doctors', [PagesController::class, 'doctorsPage'])->name('doctors');
    Route::get('/contact', [PagesController::class, 'contactPage'])->name('contact');
    Route::get('/department', [PagesController::class, 'departmentPage'])->name('department');

});
