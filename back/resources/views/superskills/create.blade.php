@extends('layouts.master')

@section('page-title')
    {{ __('admin.New Super Skill') }}
@endsection

@section('page-content')
    <div class="card">
        <div class="card-body container">
            <h1 class="text-center bg-primary text-white"><i class="ion-plus-circled"></i> {{ __('admin.Add Super Skill') }}
            </h1>
            <form action="{{ route('superskills.store') }}" method="POST" enctype="multipart/form-data" class="row">
                @csrf
                <div class="form-group col-md-12">
                    <label for="name"><i class="fa-solid fa-file-signature"></i> {{ __('admin.Name') }}<span class="text-danger ms-2">*</span></label>
                    <input type="text" name="name" id="name"
                        class="form-control @error('name') is-invalid @enderror">
                    @error('name')
                        <strong class="invalid-feedback" role="alert">{{ $message }}</strong>
                    @enderror
                </div>


              <div class="form-group col-12">
               <label for="course_id">{{__('admin.Course')}}<span class="text-danger ms-2">*</span></label>
               <select name="course_id" id="course_id" class="form-select">
                @foreach($courses as $course)
                  <option value="{{$course->id}}">{{$course->name}}</option>
                @endforeach
                </select>
              </div>

                <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-lg">{{ __('admin.Add') }}</button>
                    <button type="reset" class="btn btn-secondary btn-lg">{{ __('admin.Reset') }}</button>
                </div>

            </form>
        </div>
    </div>
@endsection
