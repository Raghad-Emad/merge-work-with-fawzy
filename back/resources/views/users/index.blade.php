@extends('layouts.master')

@section('page-title')
    {{ __('admin.Users') }}
@endsection

@section('page-content')
    <div class="row">
        <div class="card-body">
            <div class="table-responsive">
                <h1 class="text-center bg-dark text-light"><i class="fa-solid fa-list"></i>
                    {{ __('admin.All Users') }}</h1>
                <table class="table table-hover table-bordered" id="data-table">
                    <thead class="table-dark">
                        <tr>
                            <th>{{ __('admin.ID') }}</th>
                            <th>{{ __('admin.Name') }}</th>
                            <th>{{ __('admin.Email') }}</th>
                            <th>{{ __('admin.Phone') }}</th>
                            <th>{{ __('admin.City') }}</th>
                            <th>{{ __('admin.Role') }}</th>
                            <th>{{ __('admin.Actions') }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($users as $user)
                            <tr>
                                <td>{{ $user->id }}</td>
                                <td>{{ $user->name }}</td>
                                <td>{{ $user->email }}</td>
                                <td>{{ $user->phone }}</td>
                                <td>{{ $user->city->name }}</td>
                                <td>{{ $user->role->name }}</td>
                                <td>
                                    <a href="{{ route('users.show', $user->id) }}"
                                        class="btn btn-info"><i class="fa-solid fa-eye"></i></a>
                                    <a href="{{ route('users.edit', $user->id) }}"
                                        class="btn btn-success"><i class="fa-solid fa-file-signature"></i></a>
                                    <form action="{{ route('users.destroy', $user->id) }}" method="post"
                                        style="display: inline-block">
                                        @csrf
                                        @method('delete')
                                        <button type="submit" class="btn btn-danger"
                                            style="display: inline-block"><i class="fa-solid fa-trash"></i></button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

            </div>
        </div>


        @include('layouts.messages')
    @endsection
