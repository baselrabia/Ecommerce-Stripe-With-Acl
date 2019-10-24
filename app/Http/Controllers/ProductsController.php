<?php

namespace App\Http\Controllers;

use Session;
use App\Product;
use Illuminate\Http\Request;


class ProductsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('products.index', ['products' => Product::orderBy('created_at', 'desc')->get()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('products.create');
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate([
            'name' => 'required|string|min:3|max:52',
            'description' => ['required', 'string', 'min:6'],
            'image' => 'nullable|max:1999',
            'price' => ['required', 'integer']

        ]);


        if (request()->hasFile('image')) {
        $product_image = $request->image;
        $product_image_new_name = time() . $product_image->getClientOriginalName();
        $product_image->move('uploads/products', $product_image_new_name);
    }


        $product = new Product;
        $product->name = $request->name;
        $product->description = $request->description;
        $product->price = $request->price;
        //'uploads/products/' .
        $product->image = $product_image_new_name  ?? "default.jpg" ;
        $product->save();
        Session::flash('success', 'Product created.');
        return redirect()->route('products.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('products.edit', ['product' => Product::find($id)]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        request()->validate([
            'name' => 'required|string|min:3|max:52',
            'description' => ['required', 'string', 'min:6'],
            'image' => 'nullable|max:1999',
            'price' => ['required', 'integer']

        ]);


        if (request()->hasFile('image')) {
            $product_image = $request->image;
            $product_image_new_name = time() . $product_image->getClientOriginalName();
            $product_image->move('uploads/products', $product_image_new_name);
        }


        $product = Product::find($id);
        $product->name = $request->name;
        $product->description = $request->description;
        $product->price = $request->price;
        //'uploads/products/' .
        $product->image = $product_image_new_name  ??  $product->image;
        $product->save();
        Session::flash('success', 'Product Updated.');
        return redirect()->route('products.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::find($id);
        if (file_exists("uploads/products/" . $product->image)) {

            unlink("uploads/products/" . $product->image);
        }
        $product->delete();
        Session::flash('success', 'Product deleted.');
        return redirect()->back();
    }
}
