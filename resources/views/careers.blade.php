@extends('layouts.app')

@section('title', $title)
@section('page', $title)


@section('content')


<!--Start contact form area-->
<section class="contact-form-area">
    <div class="container">
        <div class="sec-title">
            <h1>@lang('pages.get_job')</h1>
            <span class="border"></span>
            {{-- <div class="select-box pull-right">
                <select class="text-capitalize selectpicker form-control required" name="form_subject" data-style="g-select" data-width="100%">
                    <option>Newyork Campus</option>
                    <option>Canada Campus</option>
                    <option>UK Campus</option>
                    <option>USA Campus</option>
                </select>
            </div> --}}
        </div>
        <div class="row">
            <div class="col-lg-8 col-md-7 fl-right tx-right">
                <div class="contact-form">
                    <form id="contact-form" name="contact_form" class="default-form" action="#" method="post">
                        <h2>@lang('pages.send_your_data')</h2>
                        <div class="row">
                            <div class="col-md-6 fl-right">
                            <input type="text" name="form_name" value="" placeholder="{{__('pages.your_name')}}" required="">
                            </div>
                            <div class="col-md-6">
                                <input type="email" name="form_email" value="" placeholder="{{__('pages.your_email')}}*" required="">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 fl-right">
                                <input type="text" name="form_phone" value="" placeholder="{{__('pages.phone')}}">
                            </div>
                           
                        </div>
                        <div class="row">
                            <div class="col-md-12 mb-20">
                                <input type="file" class="fl-right rtl" name="cv" placeholder="{{__('pages.cv')}}">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <input id="form_botcheck" name="form_botcheck" class="form-control" type="hidden" value="">
                                <button class="thm-btn bgclr-1" type="submit" data-loading-text="Please wait...">@lang('pages.send')</button>
                            </div>
                        </div>
                    </form>  
                </div>
            </div>
            <div class="col-lg-4 col-md-5 tx-right">
                <div class="quick-contact">
                    <div class="title">
                        <h2>@lang('pages.quick_contact')</h2>
                        <p>@lang('pages.any_ques')</p>
                    </div>
                    <ul class="contact-info">
                        <li>
                            <div class="icon-holder">
                                <span class="flaticon-pin"></span>
                            </div>
                            <div class="text-holder">
                                <h5><span>@lang('pages.address'):</span> 
                                    @if (app()->getLocale() !== 'ar')
                                    {{setting('site.address')}}<br />
                                    {{setting('site.address2')}}
                                        
                                    @else
                                    {{setting('site.addressar')}}<br />
                                    {{setting('site.addressar2')}}
                                    @endif
                                </h5>
                            </div>
                        </li>
                        <li>
                            <div class="icon-holder">
                                <span class="flaticon-technology"></span>
                            </div>
                            <div class="text-holder">
                                <h5><span>@lang('pages.phone'):</span> {{setting('site.phone')}} &<br> {{setting('site.ambulancephone')}}</h5>
                            </div>
                        </li>
                        <li>
                            <div class="icon-holder">
                                <span class="flaticon-interface"></span>
                            </div>
                            <div class="text-holder">
                                <h5><span>@lang('pages.email'):</span> {{setting('site.email')}}</h5>
                            </div>
                        </li>
                    </ul>
                    <ul class="social-links">
                        <li>
                            <a href="{{setting('site.facebook')}}"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li>
                              <a href="{{setting('site.twitter')}}"><i class="fa fa-twitter"></i></a>
                            </li>
                            
                            <li>
                              <a href="{{setting('site.linkedin')}}"><i class="fa fa-linkedin"></i></a>
                            </li>
                    </ul>
                </div>    
            </div>
            
        </div>
    </div>
</section>
<!--End contact form area-->  


@endsection
