<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function preference(Request $request)
    {
        $income = array_map('intval',explode("-",$request->income));
        $user_data = DB::table('users')
        ->whereBetween('income', $income);
        if($request->occupation){
            $user_data->whereIn('occupation', $request->occupation);
        }
        if($request->family){
            $user_data->whereIn('family', $request->family);
        }

        if($request->manglik == "Yes" || $request->manglik == "No"){
            $user_data->where('manglik', $request->manglik);
        }
        $result = $user_data->get();
        return view('prefered_user',compact('result'));
    }

    public function adminHome(Request $request)
    {
        $all_user_data = DB::table('users');

        if($request->family){
            $all_user_data->where('family', $request->family);
        }
        if($request->income){
            $income = array_map('intval',explode("-",$request->income));
            $all_user_data->whereBetween('income', $income);
        }
        if($request->gender){
            $all_user_data->where('gender', $request->gender);
        }
        if($request->dob){
            $all_user_data->where('dob', $request->dob);
        }
        if($request->manglik == "Yes" || $request->manglik == "No"){
            $all_user_data->where('manglik', $request->manglik);
        }
        $all_user = $all_user_data->get();
        $family = $request->family;
        $gender = $request->gender;
        $dob = $request->dob;
        $manglik = $request->manglik;

        return view('adminHome',compact('all_user','family','gender','dob','manglik'));
    }

}
