@extends('layouts.app')

@section('title', $title)
@section('page', $title)


@section('content')


<!--Start team area-->
<section class="team-area doctor doctor-page-area">
    <div class="container">
        <div class="row">
            <div class="col-md-3 fl-right">
                <ul class="nav nav-tabs tab-menu">
                    @foreach ($departments as $department)
                    
                    <li class="{{$department->id == 1 ? 'active' : ''}}"><a  href="#{{$department->id}}" data-toggle="tab">{{$department->nameg}}</a></li>
                    @endforeach
                </ul>   
            </div>
            <div class="col-md-9  ">
                <div class="tab-content">
                    <!--Start single tab pane-->
                    @foreach ($departments as $department)
                        
                <div class="{{$department->id == 1 ? 'active' : ''}} tab-pane" id="{{$department->id}}">
                        <div class="row">
                            <!--Start single item-->
                            @php
                                $doctors = \App\Models\Doctor::where('department_id' , $department->id)->get();
                            @endphp
                            @foreach ($doctors as $doctor)
                            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 fl-right">
                                <div class="single-team-member">
                                    <div class="img-holder">
                                        <img src="{{asset('storage/' .$doctor->image)}}" alt="Awesome Image">
                                        <div class="overlay-style">
                                            <div class="box">
                                                <div class="content">
                                                    <div class="top">
                                                        <h3>{{$doctor->nameg}}</h3>
                                                        <span>{{$doctor->title}}</span>
                                                    </div>
                                                    <span class="border"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="text-holder">
                                            <h3>{{$doctor->nameg}}</h3>
                                            <span>{{$doctor->title}}</span> 
                                        </div>    
                                    </div>
                                </div>
                            </div>
                                
                            @endforeach
                            
                        </div>
                    </div>
                    @endforeach
                    <!--End single tab pane-->
                    
                    
                </div>
            </div>
        </div>
    </div>
</section> 
<!--End team area--> 

@endsection
