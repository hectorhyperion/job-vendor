<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\listings;
use Illuminate\Contracts\Validation\Rule;
use Illuminate\Validation\Rule as ValidationRule;
use log;
class ListingController extends Controller
{
    //
    public function index()
    {

        $listing= listings::orderBy('title','desc')->filter(request(['tag', 'search']))->get();
        $title ='Job Listings';
        $data = array(
            'title' => $title,
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
        'company' =>['required', Rule::unique('listings', 'company')],
        'location' =>'required',
        'website' =>'required',
        'email' =>['required','email'],
        'tags' =>'required',
        'description' =>'required',
    ]);
    return redirect('/');
}
}
