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


Route::get('/doctors', function (Request $request) {
    if($request->pageNo < 1){
        return response()->json('please provid a valid page number');
    }
    $pageNo = isset($request->pageNo)  ? $request->pageNo : 1;
    if($pageNo == 1){
        $offset = 0;
    }else{
        $offset = ($pageNo - 1) * 9;
    }
    
    $doctors = DB::select('SELECT d.id , d.name AS name , d.name_ar , d.breif_ar AS about_ar ,de.name AS speciality ,de.name_ar AS speciality_ar , d.image as avatar , d.breif as about , 0 as rating , 100 as price FROM doctors d JOIN departments de ON d.department_id = de.id LIMIT 9 OFFSET ?' , [$offset]);
    if(count($doctors) == 0){
        return response()->json('Sorry we can\'t find any doctors in this page');
    }
    return $doctors;
});
