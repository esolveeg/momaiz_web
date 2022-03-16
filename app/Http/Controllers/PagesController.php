<?php

namespace App\Http\Controllers;

use App\Models\Department;
use App\Models\Doctor;
use App\Models\Faq;
use App\Models\Gallery;
use App\Models\Service;
use App\Models\Slider;
use App\Models\Testemonial;
use Illuminate\Support\Facades\App;

class PagesController extends Controller
{

    public function homePage()
    {

        $title = __('pages.homePage');
        $sliders = Slider::all();
        $departments = Department::where('featured', true)->orderBy('order', 'ASC')->get();
        $doctors = Doctor::where('featured', true)->orderBy('order', 'ASC')->get();
        $testemonials = Testemonial::get();
        $services = Service::get();
        $firstId = Service::first()->id;
        return view('home', compact('title', 'sliders', 'departments', 'doctors', 'testemonials', 'services', 'firstId'));

    }
    public function aboutPage()
    {

        $title = __('pages.about');
        $faqs = Faq::get();
        $gallery = Gallery::get();

        return view('about', compact('title', 'faqs', 'gallery'));

    }
    public function departmentsPage()
    {

        $title = __('pages.departments');
        $departments = Department::orderBy('order', 'ASC')->get();

        return view('departments', compact('title', 'departments'));

    }
    public function doctorsPage()
    {

        // $doctors = Doctor::where('featured', true)->orderBy('order', 'ASC')->get();
        $title = __('pages.doctors');
        $departments = Department::orderBy('order', 'ASC')->get();
        // dd($departments);
        return view('doctors', compact('title', 'departments'));

    }
    public function contactPage()
    {

        $title = __('pages.contact');
        return view('contact', compact('title'));

    }
    public function careersPage()
    {

        $title = __('pages.careers');
        return view('careers', compact('title'));

    }
}
