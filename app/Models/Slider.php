<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;

class Slider extends Model
{
    public function getTitlegAttribute()
    {
        return App::getLocale() == 'ar' ? $this->title_ar : $this->title;
    }
    public function getContentgAttribute()
    {
        return App::getLocale() == 'ar' ? $this->content_ar : $this->content;
    }
}
