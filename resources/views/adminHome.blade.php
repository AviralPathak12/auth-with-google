@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">{{ __('All User List') }}</div>
                    <table class="table">
                        <thead>
                        <tr>
                            <th>Family Type</th>
                            <th>Manglik</th>
                            <th>Gender</th>
                            <th>Age</th>
                            <th>Income</th>
                        </tr>
                        </thead>
                        <tbody>
                        <form method="GET" action="{{route('admin.home')}}">
                            @csrf
                            <tr>
                                <td >
                                    <select name="family" id="family">
                                        <option {{("Joint Family" == $family ? 'selected' : '')}} value="Joint Family">Joint Family</option>
                                        <option {{("Nuclear Family" == $family ? 'selected' : '')}} value="Nuclear Family">Nuclear Family</option>
                                    </select>
                                </td>
                                <td>
                                    <select name="manglik" id="manglik">
                                        <option {{("Yes" == $manglik ? 'selected' : '')}} value="Yes">Yes</option>
                                        <option {{("No" == $manglik ? 'selected' : '')}} value="No">No</option>
                                    </select>
                                </td>
                                <td>
                                    <select name="gender" id="gender">
                                        <option {{("Male" == $gender ? 'selected' : '')}} value="Male">Male</option>
                                        <option {{("Female" == $gender ? 'selected' : '')}} value="Female">Female</option>
                                    </select>
                                </td>
                                <td>
                                    <select name="dob" id="dob">
                                        @for($i=21 ; $i < 51 ; $i++)
                                            <option {{($i==$dob ? 'selected' : '')}} value="{{$i}}">{{$i}}</option>
                                        @endfor
                                    </select>
                                </td>
                                <td>
                                    <p>
                                        <input type="text" id="amount" name="income" readonly style="border:0; color:#f6931f; font-weight:bold;">
                                    </p>

                                    <div id="slider-range"></div>
                                </td>
                                <td><button type="submit" class="btn btn-primary">
                                        {{ __('Submit') }}
                                    </button></td>

                            </tr>
                        </form>
                    </table>
{{--                    <span class="col-md-2">--}}
{{--                        <label for="family" >Family Type</label> <br>--}}
{{--                        <select name="family" id="family">--}}
{{--                            <option value="Joint Family">Joint Family</option>--}}
{{--                            <option value="Nuclear Family">Nuclear Family</option>--}}
{{--                        </select>--}}
{{--                    </span>--}}
{{--                    <span class="col-md-2">--}}
{{--                        <label for="manglik">Manglik</label> <br>--}}
{{--                        <select name="manglik" id="manglik">--}}
{{--                            <option value="Yes">Yes</option>--}}
{{--                            <option value="No">No</option>--}}
{{--                            <option value="both">Both</option>--}}
{{--                        </select>--}}
{{--                    </span>--}}
{{--                    <div class="col-md-2">--}}
{{--                        <label for="gender">Gender</label> <br>--}}
{{--                        <select name="gender" id="gender">--}}
{{--                            <option value="Male">Male</option>--}}
{{--                            <option value="Female">Female</option>--}}
{{--                        </select>--}}
{{--                    </div>--}}
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
                                <th>Date Of Birth</th>
                                <th>Gender</th>
                                <th>Income</th>
                                <th>Occupation</th>
                                <th>Family</th>
                                <th class="text-right">Manglik</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($all_user as $user)
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
