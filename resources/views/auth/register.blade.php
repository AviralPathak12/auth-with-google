@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Register') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="dob" class="col-md-4 col-form-label text-md-right">Date Of Birth</label>

                            <div class="col-md-6">
                                <input id="dob" type="date" class="form-control" name="dob" required autocomplete="dob">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="gender" class="col-md-4 col-form-label text-md-right">Gender</label>

                            <div class="col-md-6">
                                <label for="male">Male</label>
                                <input type="radio" id="male" name="gender" value="Male" required> 
                                <label for="female">Female</label>
                                <input type="radio" id="female" name="gender" value="Female">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="income" class="col-md-4 col-form-label text-md-right">Annual Income</label>

                            <div class="col-md-6">
                                <input id="income" type="number" class="form-control" name="income" required autocomplete="income">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="occupation" class="col-md-4 col-form-label text-md-right">Occupation</label>

                            <div class="col-md-6">
                                <select name="occupation" id="occupation">
                                    <option value="Private Job">Private Job</option>
                                    <option value="Government Job">Government Job</option>
                                    <option value="Business">Business</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="family" class="col-md-4 col-form-label text-md-right">Family Type</label>

                            <div class="col-md-6">
                                <select name="family" id="family">
                                    <option value="Joint Family">Joint Family</option>
                                    <option value="Nuclear Family">Nuclear Family</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="manglik" class="col-md-4 col-form-label text-md-right">Manglik</label>

                            <div class="col-md-6">
                                <select name="manglik" id="manglik">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Register') }}
                                </button>
                            </div>
                        </div>
                    </form>
                    <a href="{{ url('auth/google') }}" style="margin-top: 20px;" class="btn btn-lg btn-success btn-block">
                        <strong>Login With Google</strong>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
