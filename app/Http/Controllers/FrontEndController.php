<?php

namespace App\Http\Controllers;
use App\Product;
use Illuminate\Http\Request;

class FrontEndController extends Controller
{

    public function index(){

        return view('index')->with('products', Product::orderBy('created_at', 'desc')->paginate(6));
    }

    public function singleProduct($id)
    {
        return view('single', ['product' => Product::find($id)]);
    }
}
