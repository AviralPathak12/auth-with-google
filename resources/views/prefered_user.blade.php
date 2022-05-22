@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">{{ __('Partner Preference') }}</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                        <table class="table">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Age</th>
                                <th>Gender</th>
                                <th>Income</th>
                                <th>Occupation</th>
                                <th>Family</th>
                                <th class="text-right">Manglik</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($result as $user)
                                <tr>
                                    <td class="text-center">{{$loop->index+1}}</td>
                                    <td>{{$user->name}}</td>
                                    <td>{{$user->email}}</td>
                                    <td>{{$user->dob}}</td>
                                    <td>{{$user->gender}}</td>
                                    <td>{{$user->income}}</td>
                                    <td>{{$user->occupation}}</td>
                                    <td>{{$user->family}}</td>
                                    <td class="text-right">{{$user->manglik}}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
