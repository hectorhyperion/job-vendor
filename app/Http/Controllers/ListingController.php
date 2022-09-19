<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\listings;
use Illuminate\Validation\Rule;
use log;

class ListingController extends Controller
{
    //
    public function index()
    {

        $listing= listings::orderBy('created_at','desc')->filter(request(['tag', 'search']))->paginate(6);

        $data = array(

            'listings' => $listing
        );
        return view('listings.index')->with($data);
    }
    public function job($id)
    {
        $listing = listings::find($id);
        if ($listing) {
              $data = array(
            'listings' => $listing
        );
        }
        else{
            abort('404');
        }
       return view('listings.show')->with($data);
}

//show create form
public function create()
{
        return view('listings.create');
}
 //store data
public function store(Request $request)
{
    $formFields= $request->validate([
        'title' =>'required',
        'company' =>'required|unique:listings',
        'location' =>'required',
        'website' =>'required',
        'email' =>['required','email'],
        'tags' =>'required',
        'description' =>'required',
    ]);
    if($request->hasFile('logo')) {
        $formFields['logo'] = $request->file('logo')->store('logos', 'public');
    }
     listings::create($formFields);
    return redirect('/')->with('message','listing created successfully');
}
}
