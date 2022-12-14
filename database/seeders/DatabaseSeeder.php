<?php

namespace Database\Seeders;


use App\Models\listings;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
    //   \App\Models\User::factory(5)->create();
    $user = User::factory()->create(['name'=>'john doe',
    'email' =>'john@email.com'
]);
       listings::factory(10)->create([
        'user_id' => $user->id
       ]);
       /*
    listing:: create([
        'title' =>'Laravel Senior Developer',
        'tags' =>'Laravel, JavaScript',
        'company' =>'acme corp',
        'location' =>'Ohio, USA',
        'email' =>'email@gmail.com',
        'website' =>'https://www.acme.com',
        'description' =>'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas ut tortor quis sapien fringilla vehicula eu vitae purus. Integer bibendum facilisis tellus, a maximus odio convallis sit amet. Proin eleifend lacus ut mauris tempor, in scelerisque risus vestibulum. Pellentesque semper cursus eros, non tristique tellus molestie vitae. Duis mollis purus sed metus euismod molestie. Fusce dui lectus, ornare nec ullamcorper sit amet, ultricies id nibh. Aenean eleifend eleifend felis vel accumsan. Ut vel metus ac lacus dictum consectetur sed non odio. Integer ultricies consequat neque pellentesque faucibus.'
    ]);
    listing:: create([
        'title' =>'Full-stack Engineer',
        'tags' =>'Laravel, Backend, Api',
        'company' =>'Stark Industries',
        'location' =>'New York, NY',
        'email' =>'email12@gmail.com',
        'website' =>'https://www.starkindustries.com',
        'description' =>'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas ut tortor quis sapien fringilla vehicula eu vitae purus. Integer bibendum facilisis tellus, a maximus odio convallis sit amet. Proin eleifend lacus ut mauris tempor, in scelerisque risus vestibulum. Pellentesque semper cursus eros, non tristique tellus molestie vitae. Duis mollis purus sed metus euismod molestie. Fusce dui lectus, ornare nec ullamcorper sit amet, ultricies id nibh. Aenean eleifend eleifend felis vel accumsan. Ut vel metus ac lacus dictum consectetur sed non odio. Integer ultricies consequat neque pellentesque faucibus.'
    ]);
    */
    }
}
