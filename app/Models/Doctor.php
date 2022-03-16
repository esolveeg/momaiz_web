<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;

class Doctor extends Model
{
    public function getNamegAttribute()
    {
        return App::getLocale() == 'ar' ? $this->name_ar : $this->name;
    }
    public function getBreifgAttribute()
    {
        return App::getLocale() == 'ar' ? $this->breif_ar : $this->breif;
    }
}
