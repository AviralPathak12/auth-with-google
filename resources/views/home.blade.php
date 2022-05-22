@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Partner Preference') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                        <form method="POST" action="{{ route('preference') }}">
                            @csrf
                            <div class="form-group">
                                <label for="amount" class="col-md-4 col-form-label text-md-right">Annual Income</label>

                                <p>
                                    <input type="text" id="amount" name="income" readonly style="border:0; color:#f6931f; font-weight:bold;">
                                </p>

                                <div id="slider-range"></div>
                            </div>

                            <div class="form-group row">
                                <label for="occupation" class="col-md-4 col-form-label text-md-right">Occupation</label>

                                <div class="col-md-6">
                                    <select id="occupation" multiple name="occupation[]">
                                        <option value="Private Job">Private Job</option>
                                        <option value="Government Job">Government Job</option>
                                        <option value="Business">Business</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="family" class="col-md-4 col-form-label text-md-right">Family Type</label>

                                <div class="col-md-6">
                                    <select multiple name="family[]" id="family">
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
                                        <option value="both">Both</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row mb-0">
                                <div class="col-md-6 offset-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Submit') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
