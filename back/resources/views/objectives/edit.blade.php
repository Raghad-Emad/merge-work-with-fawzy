@extends('layouts.master')

@section('page-title')
    {{ __('admin.Edit Objective') }}
@endsection

@section('page-content')
    <div class="card">
        <div class="card-body container">
            <h1 class="text-center bg-success text-white"><i class="ion-plus-circled"></i> {{ __('admin.Edit Objective') }}
            </h1>
            <form action="{{ route('objectives.update',$objective->id) }}" method="POST" enctype="multipart/form-data" class="row">
                @csrf
                @method('PUT')
                <div class="form-group col-md-12">
                    <label for="name"><i class="fa-solid fa-file-signature"></i> {{ __('admin.Name') }}<span class="text-danger ms-2">*</span></label>
                    <input type="text" name="name" id="name" value="{{$objective->name}}"
                        class="form-control @error('name') is-invalid @enderror">
                    @error('name')
                        <strong class="invalid-feedback" role="alert">{{ $message }}</strong>
                    @enderror
                </div>

                <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-lg">{{ __('admin.Update') }}</button>
                    <button type="reset" class="btn btn-secondary btn-lg">{{ __('admin.Reset') }}</button>
                </div>

            </form>
        </div>
    </div>
@endsection
