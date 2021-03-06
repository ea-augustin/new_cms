<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Route;

class RouteServiceProvider extends ServiceProvider
{
    /**
     * This namespace is applied to your controller routes.
     *
     * In addition, it is set as the URL generator's root namespace.
     *
     * @var string
     */
    protected $namespace = 'App\Http\Controllers';

    /**
     * The path to the "home" route for your application.
     *
     * @var string
     */
    public const HOME = '/admin';

    /**
     * Define your route model bindings, pattern filters, etc.
     *
     * @return void
     */
    public function boot()
    {
        //

        parent::boot();
    }

    /**
     * Define the routes for the application.
     *
     * @return void
     */
    public function map()
    {
        $this->mapApiRoutes();

        $this->mapWebRoutes();

        $this->mapPostRoutes();

        $this->mapUserRoutes();

        $this->mapRolesRoutes();

        $this->mapPermissionsRoutes();


        //
    }

    /**
     * Define the "web" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     *
     * @return void
     */
    protected function mapWebRoutes()
    {
        Route::middleware('web')
            ->namespace($this->namespace)
            ->group(base_path('routes/web/web.php'));
    }

     /**
     * Define the "web" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */
    protected function mapPostRoutes()
    {
        Route::prefix('admin')
            ->middleware('web')
            ->namespace($this->namespace)
            ->group(base_path('routes/web/posts.php'));
    }

    /**
     * Define the "web" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */
    protected function mapUserRoutes()
    {
        Route::prefix('admin')
            ->middleware('web')
            ->namespace($this->namespace)
            ->group(base_path('routes/web/users.php'));
    }

     /**
     * Define the "web" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */
    protected function mapRolesRoutes()
    {
        Route::prefix('admin')
            ->middleware(['web','auth','role:admin'])
            ->namespace($this->namespace)
            ->group(base_path('routes/web/roles.php'));
    }

     /**
     * Define the "web" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */
    protected function mapPermissionsRoutes()
    {
        Route::prefix('admin')
            ->middleware('web')
            ->namespace($this->namespace)
            ->group(base_path('routes/web/permissions.php'));
    }


 
    /**
     * Define the "api" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */
    protected function mapApiRoutes()
    {
        Route::prefix('api')
            ->middleware('api')
            ->namespace($this->namespace)
            ->group(base_path('routes/api/api.php'));
    }
}

