<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\listings;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;
use log;

class ListingController extends Controller
{
    //
    public function index()
    {

        $listing= listings::orderBy('created_at','asc')->filter(request(['tag', 'search']))->paginate(6);

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
    $formFields['user_id'] = auth()->id();
  DB::table('listings')->insert($formFields);
       // Listings::create($formFields);
    return redirect('/')->with('message','listing created successfully');
}
//show edit form
public function edit(listings $listings)
{

        return view('listings.edit',['listings' =>$listings]);
}
//update DB_DATABASE
public function update(Request $request, Listings $listings)
{
    //MAKE sure login user is owner
    if ($listings->user_id != auth()->id()) {
       abort(403, 'Unauthorized Action');
    }
    $formFields= $request->validate([
        'title' =>'required',
        'company' =>'required',
        'location' =>'required',
        'website' =>'required',
        'email' =>['required','email'],
        'tags' =>'required',
        'description' =>'required',
    ]);
    if($request->hasFile('logo')) {
        $formFields['logo'] = $request->file('logo')->store('logos', 'public');
    }
  $listings->update($formFields);
       // Listings::create($formFields);
    return back()->with('message','Listing Updated successfully');
}
public function manage()
{
  return view('listings.manage',['listing' => auth()->user()->listings()->get()]);
}
public function delete(Listings $listings)
{
       //MAKE sure login user is owner
       if ($listings->user_id != auth()->id()) {
        abort(403, 'Unauthorized Action');
     }
    $listings->delete();
        return redirect('/')->with('message','Listing Deleted successfully');
}
}
