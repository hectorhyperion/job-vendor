<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Validation\Rule;
use log;
class UserController extends Controller
{
    //
    public function create()
    {
            return view('user.register');
    }
    //Create New Users
    public function store(Request $request)
    {
            $formFields= $request->validate([
                'name'=>'required|min:3',
                  'email' =>['required', 'email', Rule::unique('users','email')],
                'password' =>'required|confirmed|min:6|max:16',

            ]);

            //hash Password
            $formFields['password']= bcrypt($formFields['password']);
                $user = User::create($formFields);

                //login
                auth()->login($user);
                return redirect('/')->with('message','User Created and Logged in');
    }
    //show login form
    public function login()
    {
      return view('user.login');
    }
    //authenticate user
    public function authenticate(Request $request)
    {
        $formFields= $request->validate([
              'email' =>['required', 'email'],
            'password' =>'required',
        ]);


        if (auth()->attempt($formFields)) {
            $request->session()->regenerate();
            return redirect('/')->with('message','You Are Now Logged In');
            }
            return back()->withErrors(['email'=>'Invalid Credentials'])->onlyInput('email');

    }
    public function logout(Request $request)
    {
      auth()->logout();
      $request->session()->invalidate();
      $request->session()->regenerateToken();
      return redirect('/')->with('message','Your have Been Logged out');
    }
}
