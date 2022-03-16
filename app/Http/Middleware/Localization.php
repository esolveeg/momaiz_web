<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class Localization
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $locale = isset($request->locale) ? $request->locale : 'ar';
        if (!in_array($locale, ['en', 'ar', null])) {
            abort(400);
        }

        App::setLocale($locale);
        return $next($request);
    }
}
