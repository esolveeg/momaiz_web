<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;

class Faq extends Model
{
    public function getAnswergAttribute()
    {
        return App::getLocale() == 'ar' ? $this->answer_ar : $this->answer;
    }

    public function getQuestiongAttribute()
    {
        return App::getLocale() == 'ar' ? $this->question_ar : $this->question;
    }
}
