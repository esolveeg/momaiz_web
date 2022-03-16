@extends('layouts.app')

@section('title', $title)


@section('content')


      <!--Start rev slider wrapper-->
      <section class="rev_slider_wrapper">
        <div id="slider1" class="rev_slider" data-version="5.0">
          <ul>
            @if (app()->getLocale() == 'en')
            @foreach ($sliders as $slider)
            <li data-transition="rs-20">
              <img
                src="{{asset('storage/' . $slider->image)}}"
                alt=""
                width="1920"
                height="700"
                data-bgposition="top center"
                data-bgfit="cover"
                data-bgrepeat="no-repeat"
                data-bgparallax="1"
              />

              <div
                class="tp-caption tp-resizeme"
                data-x="left"
                data-hoffset="0"
                data-y="top"
                data-voffset="220"
                data-transform_idle="o:1;"
                data-transform_in="x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0.01;s:3000;e:Power3.easeOut;"
                data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;"
                data-mask_in="x:[100%];y:0;s:inherit;e:inherit;"
                data-splitin="none"
                data-splitout="none"
                data-responsive_offset="on"
                data-start="1500"
              >
                <div class="slide-content-box mar-lft">
                  {!! $slider->titleg !!}
                  {{-- {!! $slider->contentg !!} --}}
                 
                  <div class="button" style="margin-top:30px">
                    <a class="btn-style-two" href="{{route('departments' , app()->getLocale())}}">@lang('pages.departments')</a>
                  </div>
                </div>
              </div>
            </li>
            @endforeach
            @else
            @foreach ($sliders as $slider)
            <li data-transition="rs-20">
              <img
                src="{{asset('storage/' . $slider->image)}}"
                alt=""
                width="1920"
                height="700"
                data-bgposition="top center"
                data-bgfit="cover"
                data-bgrepeat="no-repeat"
                data-bgparallax="1"
              />

              <div
                class="tp-caption tp-resizeme"
                data-x="right"
                data-hoffset="0"
                data-y="top"
                data-voffset="220"
                data-transform_idle="o:1;"
                data-transform_in="x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0.01;s:3000;e:Power3.easeOut;"
                data-transform_out="s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;"
                data-mask_in="x:[100%];y:0;s:inherit;e:inherit;"
                data-splitin="none"
                data-splitout="none"
                data-responsive_offset="on"
                data-start="1500"
              >
                <div class="slide-content-box mar-lft">
                  {!! $slider->titleg !!}
                  {{-- {!! $slider->contentg !!} --}}
                 
                  <div class="button" style="margin-top:30px">
                    <a class="btn-style-two" href="{{route('departments' , app()->getLocale())}}">@lang('pages.departments')</a>
                  </div>
                </div>
              </div>
            </li>
            @endforeach
            @endif
          </ul>
        </div>
      </section>
      <!--Start Medical Departments area-->
      <section class="medical-departments-area">
        <div class="container">
          <div class="sec-title">
            <h1>@lang('pages.medical_departments')</h1>
            <span class="border"></span>
          </div>
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
              <div class="medical-departments-carousel">
                <!--Start single item-->
                @foreach ($departments as $department)
                <div class="single-item text-center">
                  <div class="iocn-holder">
                       <img class="department-img" src="{{asset('storage/' . $department->icon)}}"/>
                    <!--<span class="flaticon-{{$department->icon}}"></span>-->
                  </div>
                  <div class="text-holder">
                  <h3>{{$department->nameg}}</h3>
                    <p>
                      {{$department->breifg}}
                    </p>
                  </div>
                </div>
                    
                @endforeach
              
              </div>
            </div>
          </div>
        </div>
      </section>
      <!--End Medical Departments area-->

      <!--Start service area-->
      <section class="service-area">
        <div class="container">
          <div class="row">
            <div class="col-md-4 fl-right">
              <div class="img-holder">
                <img src="{{asset('storage/' . setting('site.servicesimage'))}}" alt="{{__('pages.alt')}}" />
                
              </div>
            </div>
            <div class="col-md-8">
              <div class="text-holder">
                <!--Start tab box-->
                <div class="tab-box">
                  <div class="tab-content">
                    <!--Start single tab pane-->
                    @foreach ($services  as $service)
                  <div class="{{$service->id == $firstId ? 'active' : ''}} tab-pane" id="{{$service->id}}">
                      <div class="inner-content">
                        <div class="sec-title">
                          <h1>@lang('pages.our_best_servicess')</h1>
                          <span class="border"></span>
                        </div>
                        <div class="row">
                          <div class="col-md-6 fl-right tx-right">
                            <div class="text-box">
                              <h3>{{$service->nameg}}</h3>
                              <p>
                                {{$service->breifg}}
                              </p>
                            </div>
                          </div>
                          <div class="col-md-6">
                            <div class="img-box tx-right">
                              <img src="{{asset('storage/' . $service->image)}}" alt="{{__('pages.alt')}}" />

                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                        
                    @endforeach
                    <!--End single tab pane-->
                   
                  </div>
                  
                  <ul class="nav nav-tabs tab-menu">
                    @foreach ($services as $service)
                        
                    <li class="{{$service->id == $firstId ? 'active' : ''}} fl-right">
                      <a href="#{{$service->id}}" data-toggle="tab">
                        <div class="img-holder" >
                          <img src="{{asset('storage/' . $service->image)}}" alt="{{__('pages.alt')}}" />
                          
                          <div class="overlay-style-one">
                            <div class="box">
                              <div class="content">
                                <div class="iocn-holder">
                                  <span class="flaticon-plus-symbol"></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </a>
                    <h3>{{$service->nameg}}</h3>
                    </li>
                    @endforeach
                  
                  </ul>
                </div>
                <!--End tab box-->
              </div>
            </div>
          </div>
        </div>
      </section>
      <!--End service area-->

      <!--Start team area-->
      <section class="team-area">
        <div class="container">
          <div class="sec-title">
            <h1>@lang('pages.team_of_consultunts')</h1>
            <span class="border"></span>
          </div>
          <div class="row">
            <!--Start single item-->
            @foreach ($doctors as $doctor)
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
              <div class="single-team-member">
                <div class="img-holder">
                  <img src="{{asset('storage/' . $doctor->image)}}" alt="{{__('pages.alt')}}" />
                  <div class="overlay-style">
                    <div class="box">
                      <div class="content">
                        <div class="top">
                          <h3> {{$doctor->nameg}}</h3>
                          <span> {{$doctor->title}}</span>
                        </div>
                        <span class="border"></span>
                      </div>
                    </div>
                  </div>
                  <div class="text-holder">
                    <h3> {{$doctor->nameg}}</h3>
                          <span> {{$doctor->title}}</span>
                  </div>
                </div>
              </div>
            </div>
                
            @endforeach
          
          </div>
        </div>
      </section>
      <!--End team area-->

      {{-- <!--Start fact counter area-->
      <section
        class="fact-counter-area"
        style="background-image: url(images/resources/fact-counter-bg.jpg)"
      >
        <div class="container">
          <div class="sec-title text-center">
            <h1>Keep your headup & be patient</h1>
            <p>
              How all this mistaken idea of denouncing pleasure and praising
              pain was born and I will give you a complete account of the<br />
              system and expound the actual teachings of the great.
            </p>
          </div>
          <div class="row">
            <!--Start single item-->
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
              <ul>
                <li>
                  <div class="single-item text-center">
                    <div class="icon-holder">
                      <span class="flaticon-medical"></span>
                    </div>
                    <h1>
                      <span
                        class="timer"
                        data-from="1"
                        data-to="25"
                        data-speed="5000"
                        data-refresh-interval="50"
                        >25</span
                      >
                    </h1>
                    <h3>Years of Experience</h3>
                  </div>
                </li>
                <li>
                  <div class="single-item text-center">
                    <div class="icon-holder">
                      <span class="flaticon-smile"></span>
                    </div>
                    <h1>
                      <span
                        class="timer"
                        data-from="1"
                        data-to="284"
                        data-speed="5000"
                        data-refresh-interval="50"
                        >284</span
                      >
                    </h1>
                    <h3>Well Smiley Faces</h3>
                  </div>
                </li>
                <li>
                  <div class="single-item text-center">
                    <div class="icon-holder">
                      <span class="flaticon-medical-1"></span>
                    </div>
                    <h1>
                      <span
                        class="timer"
                        data-from="1"
                        data-to="176"
                        data-speed="5000"
                        data-refresh-interval="50"
                        >176</span
                      >
                    </h1>
                    <h3>Heart Transplant</h3>
                  </div>
                </li>
                <li>
                  <div class="single-item text-center">
                    <div class="icon-holder">
                      <span class="flaticon-ribbon"></span>
                    </div>
                    <h1>
                      <span
                        class="timer"
                        data-from="1"
                        data-to="142"
                        data-speed="5000"
                        data-refresh-interval="50"
                        >142</span
                      >
                    </h1>
                    <h3>Awards Holded</h3>
                  </div>
                </li>
              </ul>
            </div>
            <!--End single item-->
          </div>
        </div>
      </section>
      <!--End fact counter area--> --}}

      <!--Start testimonial area-->
      <section class="testimonial-area">
        <div class="container">
          <div class="sec-title mar0auto text-center">
            <h1>@lang('pages.what_clients_say')</h1>
            <span class="border center-before"></span>
          </div>
          <div class="row">
            <!--Start single item-->
            <div class="col-md-12">
              <div class="testimonial-carousel">
                <!--Start single testimonial item-->
                @foreach ($testemonials as $testemonial)
                    
                <div class="single-testimonial-item text-center">
                  <div class="img-box">
                    <div class="img-holder">
                  <img src="{{asset('storage/' . $testemonial->image)}}" alt="{{__('pages.alt')}}" />
                  
                    </div>
                    <div class="quote-box">
                      <i class="fa fa-quote-left" aria-hidden="true"></i>
                    </div>
                  </div>
                  <div class="text-holder">
                    <p>
                      {{$testemonial->content}}
                    </p>
                  </div>
                  <div class="name">
                    <h3>{{$testemonial->nameg}}</h3>
                    <span>{{$testemonial->title}}</span>
                  </div>
                </div>
                @endforeach
               
              </div>
            </div>
            <!--End single item-->
          </div>
        </div>
      </section>
      <!--End testimonial area-->

    
    
@endsection