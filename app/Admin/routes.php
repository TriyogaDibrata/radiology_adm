<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');

    $router->resource('risikos', RisikoController::class);
    $router->resource('jenis-pemeriksaans', JenisPemeriksaanController::class);
    $router->resource('modalitas', ModalitasController::class);
    $router->resource('apds', ApdController::class);


});
