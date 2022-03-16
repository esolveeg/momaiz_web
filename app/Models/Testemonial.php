<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;

class Testemonial extends Model
{
    public function getNamegAttribute()
    {
        return App::getLocale() == 'ar' ? $this->name_ar : $this->name;
    }
}
