@extends('layouts.app')

@section('title', $title)
@section('page', __('pages.about'))


@section('content')
<!--Start breadcrumb area-->     


<!--Start welcome area-->
<section class="welcome-area">
    <div class="container">
        <div class="row">
            <div class="col-md-6 fl-right">
                <div class="img-holder">
                    <img src="{{asset('storage/' . setting('site.aboutimage'))}}" alt="Awesome Image">    
                </div>
              
            </div>
            <div class="col-md-6 tx-right">
                <div class="text-holder">
                    <div class="title">
                        <h1>@lang('pages.welcome_to')</h1>
                        <p>
                            @if (app()->getLocale() !== 'ar')
                              {{setting('site.about')}}
                            @else
                              {{setting('site.aboutar')}}
        
                            @endif
                          </p>
                          <p class="mar-top">
                            @if (app()->getLocale() !== 'ar')
                              {{setting('site.about2')}}
                            @else
                              {{setting('site.aboutar2')}}
                            @endif
                          </p>   
                    </div>
                    <ul>
                        <li>
                            <div class="single-item">
                                <div class="iocn-box">
                                    <span class="flaticon-shapes"></span>
                                </div>
                                <div class="text-box">
                                    <h3>@lang('pages.our_mission')</h3>
                                    <p>
                                        @if (app()->getLocale() !== 'ar')
                                            {{setting('site.mission')}}
                                        @else
                                            {{setting('site.missionar')}}
                    
                                        @endif
                                          
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="single-item">
                                <div class="iocn-box">
                                    <span class="flaticon-technology-2"></span>
                                </div>
                                <div class="text-box">
                                    <h3>@lang('pages.our_vison')</h3>
                                    <p>
                                        @if (app()->getLocale() !== 'ar')
                                            {{setting('site.vision')}}
                                        @else
                                            {{setting('site.visionar')}}
                    
                                        @endif
                                          
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="single-item">
                                <div class="iocn-box">
                                    <span class="flaticon-technology-2"></span>
                                </div>
                                <div class="text-box">
                                    <h3>@lang('pages.our_values')</h3>
                                    <p>
                                        @if (app()->getLocale() !== 'ar')
                                            {{setting('site.values')}}
                                        @else
                                            {{setting('site.valuesar')}}
                    
                                        @endif
                                          
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="button">
                    <a class="thm-btn bgclr-1 fl-right" href="{{route('departments' , app()->getLocale())}}">@lang('pages.departments')</a>
                    </div>    
                </div>
            </div>
        </div>
    </div>    
</section>
<!--End welcome area-->
{{--  
<!--Start special features area-->
<section class="special-features-area">
    <div class="container">
        <div class="row">
            <!--Start single item-->
            <div class="col-md-4">
                <div class="single-item">
                    <div class="icon-box">
                        <span class="flaticon-transport"></span>    
                    </div>
                    <div class="text-box">
                        <h3>24 Hrs Ambulance</h3>
                        <p>How all this mistaken idea denoucing pleasure and praisings pain was born complete account expound.</p>
                    </div>
                </div>
            </div>
            <!--End single item-->
            <!--Start single item-->
            <div class="col-md-4">
                <div class="single-item">
                    <div class="icon-box">
                        <span class="flaticon-drink"></span>    
                    </div>
                    <div class="text-box">
                        <h3>Food & Dietry</h3>
                        <p>There anyone who loves or pursues or to obtain pain of itself, because it is but because occasionally.</p>
                    </div>
                </div>
            </div>
            <!--End single item-->
            <!--Start single item-->
            <div class="col-md-4">
                <div class="single-item">
                    <div class="icon-box">
                        <span class="flaticon-avatar"></span>    
                    </div>
                    <div class="text-box">
                        <h3>Special Nurses</h3>
                        <p>Pursues or desires to obtain pain itself, because is pain, because occasionally circumstances occur procure.</p>
                    </div>
                </div>
            </div>
            <!--End single item-->
        </div>
        <div class="row">   
            <!--Start single item-->
            <div class="col-md-4">
                <div class="single-item">
                    <div class="icon-box">
                        <span class="flaticon-church"></span>    
                    </div>
                    <div class="text-box">
                        <h3>Places of Worship</h3>
                        <p>Undertakes laborious physical exercise, except to obtain some advantage from it but who has any right.</p>
                    </div>
                </div>
            </div>
            <!--End single item-->
            <!--Start single item-->
            <div class="col-md-4">
                <div class="single-item">
                    <div class="icon-box">
                        <span class="flaticon-phone"></span>    
                    </div>
                    <div class="text-box">
                        <h3>Customer Support</h3>
                        <p>Undertakes laborious physical exercise, except to obtain some advantage from it but who has any right.</p>
                    </div>
                </div>
            </div>
            <!--End single item-->
            <!--Start single item-->
            <div class="col-md-4">
                <div class="single-item">
                    <div class="icon-box">
                        <span class="flaticon-medical-2"></span>    
                    </div>
                    <div class="text-box">
                        <h3>Very Fast Aid</h3>
                        <p>Pursues or desires to obtain pain itself, because is pain, because occasionally circumstances occur procure.</p>
                    </div>
                </div>
            </div>
            <!--End single item-->
        </div>    
    </div>
</section> 
<!--End special features area-->
 --}}


<!--Start project faq area-->
<section class="project-faq-area sec-padding">
    <div class="container">
        <div class="sec-title mar0auto text-center">
            <h1>@lang('pages.gallery_faq')</h1>
            <span class="border center-before"></span>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 fl-right">
                <div class="latest-project">
                    <!--Start single blog post-->
                    @foreach ($gallery as $image)
                        
                    <div class="single-project-item">
                        <div class="img-holder">
                  <img src="{{asset('storage/' . $image->image)}}" alt="{{$image->alt}}" />
                 
                        </div>
                    </div>
                    @endforeach
                  
                </div>    
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 tx-right">
                <div class="faq-content">
                    <div class="accordion-box">
                        <!--Start single accordion box-->
                        @foreach($faqs as $faq)
                        <div class="accordion accordion-block">
                            <div class="accord-btn">
                                <h4>{{$faq->questiong}}</h4>
                            </div>
                            <div class="accord-content">
                                <p>{!! $faq->answerg !!}</p>
                            </div>
                        </div>
                        @endforeach
                        <!--End single accordion box--> 
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--End project faq area--> 


@endsection
