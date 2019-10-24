<?php

namespace App\Http\Middleware;

use Closure;

class RoleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (auth()->user() === null) {
            return response('insufficiant permission' , 401);
        }



        $actions= request()->route()->getAction();
        $roles = isset($actions['roles']) ? $actions['roles'] : Null ;

        if (auth()->user()->hasAnyRole($roles) && $roles !== Null) {
            return $next($request);
        }

        return response('insufficiant permission', 401);

    }
}
