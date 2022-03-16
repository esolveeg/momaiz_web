@extends('layouts.app')

@section('title', $title)
@section('page', __('pages.departments'))


@section('content')


<!--Start Medical Departments area-->
<section class="medical-departments-area departments-page">
    <div class="container">
        <div class="row">
            @foreach ($departments as $department)
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 fl-right">
                <div class="single-item text-center">
                    <div class="iocn-holder">
                        <img class="department-img" src="{{asset('storage/' . $department->icon)}}"/>
                        <!--<span class="flaticon-{{$department->icon}}"></span>    -->
                        {{-- {!! $department->icon !!} --}}
                    </div>
                    <div class="text-holder">
                        <h3>{{$department->nameg}}</h3>
                        <p>{{$department->breifg}}</p>
                    </div>
                </div>
            </div> 
                
            @endforeach
          
        </div>
       
    </div>
</section>
<!--End Medical Departments area--> 
@endsection
