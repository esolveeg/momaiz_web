<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
        <title>
          @if (app()->getLocale() !== 'ar')
            {{setting('site.title')}}
          @else
          {{setting('site.titlear')}}

          @endif
          -
          
          @yield('title')</title>

    <!-- responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    @if (app()->getLocale() !== 'ar')
      <meta name="description" content="{{setting('site.title')}}">
    @else
      <meta name="description" content="{{setting('site.titlear')}}">
    @endif

    <!-- For IE -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- master stylesheet -->
        
        <link rel="stylesheet" href="{{asset('css/style.css')}}" />
    <!-- Responsive stylesheet -->
    <link rel="stylesheet" href="{{asset('css/responsive.css')}}" />

    {{-- rtl style --}}
    @if (app()->getLocale() == 'ar')
    <link rel="stylesheet" href="{{asset('css/rtl.css')}}" />

    @endif
    <!-- Favicon -->
    <link
      rel="apple-touch-icon"
      sizes="180x180"
      href="images/favicon/apple-touch-icon.png"
    />
    <link
      rel="icon"
      type="image/png"
      href="images/favicon/favicon-32x32.png"
      sizes="32x32"
    />
    <link
      rel="icon"
      type="image/png"
      href="images/favicon/favicon-16x16.png"
      sizes="16x16"
    />
    {{-- <link rel="shortcut icon" href="{{asset('storage/' . setting('site.icon'))}}"> --}}
    <link rel="icon" type="image/png" href="{{asset('storage/' . setting('site.icon'))}}" sizes="16x16">
    <!-- Fixing Internet Explorer-->
    <!--[if lt IE 9]>
      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
      <script src="{{ asset('js/html5shiv.js')}}"></script>
    <![endif]-->
  </head>
  <body>
    <div class="boxed_wrapper">
      <!--Start Preloader -->
      <div class="preloader"></div>
     
      <!--Start top bar area-->
      <section class="top-bar-area">
        <div class="container">
          <div class="row">
            <div class="col-lg-7 col-md-6 col-sm-12 col-xs-12 fl-right tx-right">
              <div class="top-left">
                <p>
                  <span class="fl-right flaticon-phone ml-left-5"></span>@lang('pages.24/7') {{setting('site.ambulancephone')}}
                </p>
              </div>
            </div>
            <div class="col-lg-5 col-md-6 col-sm-12 col-xs-12 fl-left tx-left">
              <div class="top-right clearfix fl-left">
                <ul class="social-links">
                  <li>
                    <a href="{{setting('site.fadecbook')}}"><i class="fa fa-facebook"></i></a>
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
      <!--End top bar area-->

      <!--Start header area-->
      <section class="header-area">
        <div class="container">
          <div class="row">
            <div class="col-lg-3 col-md-3 fl-right md-none">
              <div class="logo">
                <a href="{{route('home' , app()->getLocale())}}">
                <img src="{{asset('storage/' . setting('site.logo'))}}" alt="__('pages.alt')" />
                </a>
              </div>
            </div>
            <div class="col-lg-9 col-md-9 ">
              <div class="header-right ">
                <ul>
                  <li>
                    <div class="icon-holder">
                      <span class="flaticon-technology"></span>
                    </div>
                    <div class="text-holder">
                      <h4>@lang('pages.call_us')</h4>
                    <span>{{setting('site.phone')}}</span>
                    </div>
                  </li>
                  <li>
                    <div class="icon-holder">
                      <span class="flaticon-pin"></span>
                    </div>
                    <div class="text-holder">
                      @if (app()->getLocale() !== 'ar')
                        
                            
                        <h4>{{setting('site.address')}}</h4>
                          <span>{{setting('site.address2')}}</span>
                        </div>
                        @else
                        <h4>{{setting('site.addressar')}}</h4>
                          <span>{{setting('site.addressar2')}}</span>
                        </div>
                        @endif
                  </li>
                  <li>
                    <div class="icon-holder">
                      <span class="flaticon-agenda"></span>
                    </div>
                    <div class="text-holder">
                      <h4>@lang('pages.everyday')</h4>
                      <span> @lang('pages.24/7h')</span>
                    </div>
                  </li>
                </ul>
                
              </div>
            </div>
          </div>
        </div>
      </section>
      <!--End header area-->

      <!--Start header-search  area-->
      {{-- <section class="header-search">
        <div class="container">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="search-form pull-right">
                <form action="#">
                  <div class="search">
                    <input
                      type="search"
                      name="search"
                      value=""
                      placeholder="{{Search}}"
                    />
                    <button type="submit">
                      <i class="fa fa-search" aria-hidden="true"></i>
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </section> --}}

           <!--Start mainmenu area-->
     <section class="mainmenu-area stricky">
        <div class="container">
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
              <!--Start mainmenu-->
              <nav class="main-menu pull-left">
                <div class="navbar-header">
                  <button
                    type="button"
                    class="navbar-toggle"
                    data-toggle="collapse"
                    data-target=".navbar-collapse"
                  >
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                </div>
                <div class="navbar-collapse collapse clearfix">
                  <ul class="navigation clearfix">
                  <li class="{{Route::currentRouteName() == 'home' ? 'current' : ''}}"><a href="{{route('home' , app()->getLocale())}}">@lang('pages.home')</a></li>
                    <li class="{{Route::currentRouteName() == 'about' ? 'current' : ''}}">
                      <a href="{{route('about' , app()->getLocale())}}">@lang('pages.about')</a>
                     
                    </li>
                    <li  class="{{Route::currentRouteName() == 'departments' ? 'current' : ''}}">
                      <a href="{{route('departments' , app()->getLocale())}}">@lang('pages.departments')</a>
                     
                    </li>
                    {{-- <li><a href="time-table.html">@lang('pages.time_table')</a></li> --}}
                    
                    
                    <li class="{{Route::currentRouteName() == 'doctors' ? 'current' : ''}}"><a href="{{route('doctors' , app()->getLocale())}}">@lang('pages.doctors')</a></li>
                    <li class="{{Route::currentRouteName() == 'careers' ? 'current' : ''}}"><a href="{{route('careers' , app()->getLocale())}}">@lang('pages.careers')</a></li>
                    <li class="{{Route::currentRouteName() == 'contact' ? 'current' : ''}}"><a href="{{route('contact' , app()->getLocale())}}">@lang('pages.contact')</a></li>
                  </ul>
                </div>
              </nav>
              <!--End mainmenu-->
              <!--Start mainmenu right box-->
              <div class="mainmenu-right-box pull-right">
                
                <div class="consultation-button">
                    @if (app()->getLocale() == 'en')
                    <a href="{{ route(Route::currentRouteName(), 'ar') }}" class="tx-left text-right">
                        <i class="fa fa-globe"></i>العربية
                      </a>
                    @else
                    <a href="{{ route(Route::currentRouteName(), 'en') }}" class="tx-left text-right">
                        <i class="fa fa-globe"></i>English
                      </a>
                    @endif
                   
                </div>
              </div>
              <!--End mainmenu right box-->
            </div>
          </div>
        </div>
      </section>
      <!--End mainmenu area-->
      <!--End header-search  area-->
     @php
         $routeName = Route::currentRouteName();
     @endphp
     @if ($routeName!=='home')
     <section class="breadcrumb-area" style="background-image: url({{asset('storage/' . setting('site.headerimage'))}});">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <div class="breadcrumbs">
                      <h1>@yield('page')</h1>
                  </div>
              </div>
          </div>
      </div>
      <div class="breadcrumb-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="left pull-left rtl">
                            <ul>
                                <li><a href="{{route('home' , app()->getLocale())}}">@lang('pages.home')</a></li>
                                <li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
                                <li class="active">@yield('page')</li>
                            </ul>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End breadcrumb area-->
     @endif
            @yield('content')
      
      <!--Start footer area-->
      <footer class="footer-area">
        <div class="container">
          <div class="row">
            <!--Start single footer widget-->
            <div class="col-lg-3 fl-right tx-right col-md-6 col-sm-6 col-xs-12">
              <div class="single-footer-widget pd-bottom50">
                <div class="title">
                  <h3>@lang('pages.about')</h3>
                  <span class="border"></span>
                </div>
                <div class="our-info">
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
                  <a href="{{route('about' , app()->getLocale())}}"
                    >@lang('pages.know_more')<i
                      class="fa fa-caret-right"
                      aria-hidden="true"
                    ></i
                  ></a>
                </div>
              </div>
            </div>
            <!--End single footer widget-->
            <!--Start single footer widget-->
            <div class="col-lg-3 fl-right tx-right col-md-6 col-sm-6 col-xs-12">
              <div class="single-footer-widget pd-bottom50">
                <div class="title">
                  <h3>@lang('pages.useful_links')</h3>
                  <span class="border"></span>
                </div>
                <ul class="usefull-links fl-lft">
                  <li>
                    <a href="{{route('about' , app()->getLocale())}}">@lang('pages.about')</a>
                  </li>
                  <li >
                    <a href="{{route('departments' , app()->getLocale())}}">@lang('pages.departments')</a>
                    
                  </li>
                  {{-- <li><a href="time-table.html">@lang('pages.time_table')</a></li> --}}
                  
                  
                  <li><a href="{{route('doctors' , app()->getLocale())}}">@lang('pages.doctors')</a></li>
                
                </ul>
                
                <ul class="usefull-links">
                  <li><a href="{{route('careers' , app()->getLocale())}}">@lang('pages.careers')</a></li>
                  <li><a href="{{route('contact' , app()->getLocale())}}">@lang('pages.contact')</a></li>
                </ul>


              </div>
            </div>
            <!--End single footer widget-->
            <!--Start single footer widget-->
            <div class="col-lg-3 fl-right tx-right col-md-6 col-sm-6 col-xs-12">
              <div class="single-footer-widget mar-bottom">
                <div class="title">
                  <h3>@lang('pages.contact_details')</h3>
                  <span class="border"></span>
                </div>
                <ul class="footer-contact-info">
                  <li>
                    <div class="icon-holder">
                      <span class="flaticon-pin"></span>
                    </div>
                    <div class="text-holder">
                      <h5>
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
                      <span class="flaticon-interface"></span>
                    </div>
                    <div class="text-holder">
                      <h5>{{setting('site.email')}}</h5>
                    </div>
                  </li>
                  <li>
                    <div class="icon-holder">
                      <span class="flaticon-technology-1"></span>
                    </div>
                    <div class="text-holder">
                      <h5>{{setting('site.phone')}} & {{setting('site.ambulancephone')}}</h5>
                    </div>
                  </li>
                  <li>
                    <div class="icon-holder">
                      <span class="flaticon-clock"></span>
                    </div>
                    <div class="text-holder">
                      <h5>@lang('pages.everyday'): @lang('pages.24/7h')</h5>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <!--Start single footer widget-->
            <!--Start single footer widget-->
            <div class="col-lg-3 fl-right tx-right col-md-6 col-sm-6 col-xs-12">
              <div class="single-footer-widget clearfix">
                <div class="title">
                  <h3>@lang('pages.send_email')</h3>
                  <span class="border"></span>
                </div>
                <form class="appointment-form" action="#">
                  <div class="input-box">
                    <input
                      type="text"
                      name="form_name"
                      value=""
                  placeholder="{{__('pages.your_name')}}"
                      required=""
                    />
                    <div class="icon-box">
                      <i class="fa fa-user" aria-hidden="true"></i>
                    </div>
                  </div>
                  <div class="input-box">
                    <input
                      type="email"
                      name="form_email"
                      value=""
                      placeholder="{{__('pages.your_email')}}"
                      required=""
                    />
                    <div class="icon-box">
                      <i class="fa fa-envelope" aria-hidden="true"></i>
                    </div>
                  </div>
                  <div class="input-box">
                    <textarea
                      name="form_message"
                      placeholder="{{__('pages.your_msg')}}"
                      required=""
                      aria-required="true"
                    ></textarea>
                  </div>
                  <button type="submit">@lang('pages.submit')</button>
                </form>
              </div>
            </div>
            <!--End single footer widget-->
          </div>
        </div>
      </footer>
      <!--End footer area-->

      <!--Start footer bottom area-->
      <section class="footer-bottom-area">
        <div class="container">
          <div class="row">
            <div class="col-md-8 fl-right tx-right rtl">
              <div class="copyright-text">
                <p>
                 @lang('pages.copyright')
                 <a target="_blank" href="http://www.esolve-eg.com">Esolve.</a>
                 @lang('pages.powered_by')
                 <a >ImediaHouse.</a>
                </p>
              </div>
            </div>
            <div class="col-md-4">
              <ul class="footer-social-links fl-left">
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
      </section>
      <!--End footer bottom area-->
    </div>

    <!--Scroll to top-->
    <div class="scroll-to-top scroll-to-target" data-target="html">
      <span class="flaticon-triangle-inside-circle"></span>
    </div>

    <!-- main jQuery -->
    <script src="{{ asset('js/jquery-1.11.1.min.js')}}"></script>
    <!-- Wow Script -->
    <script src="{{ asset('js/wow.js')}}"></script>
    <!-- bootstrap -->
    <script src="{{ asset('js/bootstrap.min.js')}}"></script>
    <!-- bx slider -->
    <script src="{{ asset('js/jquery.bxslider.min.js')}}"></script>
    <!-- count to -->
    <script src="{{ asset('js/jquery.countTo.js')}}"></script>
    <!-- owl carousel -->
    <script src="{{ asset('js/owl.carousel.min.js')}}"></script>
    <!-- validate -->
    <script src="{{ asset('js/validation.js')}}"></script>
    <!-- mixit up -->
    <script src="{{ asset('js/jquery.mixitup.min.js')}}"></script>
    <!-- easing -->
    <script src="{{ asset('js/jquery.easing.min.js')}}"></script>
    <!-- gmap helper -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHzPSV2jshbjI8fqnC_C4L08ffnj5EN3A"></script>
    <!--gmap script-->
    <script src="{{ asset('js/gmaps.js')}}"></script>
    <script src="{{ asset('js/map-helper.js')}}"></script>
    <!-- fancy box -->
    <script src="{{ asset('js/jquery.fancybox.pack.js')}}"></script>
    <script src="{{ asset('js/jquery.appear.js')}}"></script>
    <!-- isotope script-->
    <script src="{{ asset('js/isotope.js')}}"></script>
    <script src="{{ asset('js/jquery.prettyPhoto.js')}}"></script>
    <script src="{{ asset('js/jquery.bootstrap-touchspin.js')}}"></script>
    <!-- jQuery timepicker js -->
    <script src="{{ asset('assets/timepicker/timePicker.js')}}"></script>
    <!-- Bootstrap select picker js -->
    <script src="{{ asset('assets/bootstrap-sl-1.12.1/bootstrap-select.js')}}"></script>
    <!-- Bootstrap bootstrap touchspin js -->
    <!-- jQuery ui js -->
    <script src="{{ asset('assets/jquery-ui-1.11.4/jquery-ui.js')}}"></script>
    <!-- Language Switche  -->
    <script src="{{ asset('assets/language-switcher/jquery.polyglot.language.switcher.js')}}"></script>
    <!-- Html 5 light box script-->
    <script src="{{ asset('assets/html5lightbox/html5lightbox.js')}}"></script>

    <!-- revolution slider js -->
    <script src="{{ asset('assets/revolution/js/jquery.themepunch.tools.min.js')}}"></script>
    <script src="{{ asset('assets/revolution/js/jquery.themepunch.revolution.min.js')}}"></script>
    <script src="{{ asset('assets/revolution/js/extensions/revolution.extension.actions.min.js')}}"></script>
    <script src="{{ asset('assets/revolution/js/extensions/revolution.extension.carousel.min.js')}}"></script>
    <script src="{{ asset('assets/revolution/js/extensions/revolution.extension.kenburn.min.js')}}"></script>
    <script src="{{ asset('assets/revolution/js/extensions/revolution.extension.layeranimation.min.js')}}"></script>
    <script src="{{ asset('assets/revolution/js/extensions/revolution.extension.migration.min.js')}}"></script>
    <script src="{{ asset('assets/revolution/js/extensions/revolution.extension.navigation.min.js')}}"></script>
    <script src="{{ asset('assets/revolution/js/extensions/revolution.extension.parallax.min.js')}}"></script>
    <script src="{{ asset('assets/revolution/js/extensions/revolution.extension.slideanims.min.js')}}"></script>
    <script src="{{ asset('assets/revolution/js/extensions/revolution.extension.video.min.js')}}"></script>

    <!-- thm custom script -->
    <script src="{{ asset('js/custom.js')}}"></script>
  </body>
</html>
