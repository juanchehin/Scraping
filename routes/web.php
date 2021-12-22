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
    \Log::debug('Pasa get: ');
    return view('welcome');
});

Auth::routes([
    'register' => false
]);

Route::middleware(['auth'])->group(function () {

    Route::resource('/post', 'PostController')->names('post');

    Route::get('posts/scraping', 'ScrapingController@scraping')->name('scraping');

    Route::get('/publish/{post}', 'PostController@publish')->name('publish');

});

Route::get('/rssFeed', 'FeedController@rssFeed')->name('rss.feed');

Route::get('/home', 'HomeController@index')->name('home');
