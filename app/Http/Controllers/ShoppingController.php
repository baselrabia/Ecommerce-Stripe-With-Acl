<?php

namespace App\Http\Controllers;

use Gloudemans\Shoppingcart\Facades\Cart;
use Session;
use App\Product;
use Illuminate\Http\Request;


class ShoppingController extends Controller
{
    public function add_to_cart()
    {
        $pdt = Product::find(request()->pdt_id);

        $cartItem = Cart::add
        (
            $pdt->id,
            $pdt->name,
            request()->qty,
            $pdt->price
        );

        Cart::associate($cartItem->rowId, 'App\Product');

        Session::flash('success', 'Product added to cart.');


        return redirect()->route('cart');
    }

    public function cart()
    {

        return view('cart');
    }


    public function cart_delete($id)
    {
        Cart::remove($id);
        Session::flash('success', 'Product removed from cart.');
        return redirect()->back();
    }

    public function incr($id, $qty)
    {
        Cart::update($id, $qty + 1);
        Session::flash('success', 'Product qunatity updated.');
        return redirect()->back();
    }

    public function decr($id, $qty)
    {
        Cart::update($id, $qty - 1);
        Session::flash('success', 'Product qunatity updated.');
        return redirect()->back();
    }

    public function rapid_add($id)
    {
        $pdt = Product::find($id);
        $cartItem = Cart::add(
            $pdt->id,
            $pdt->name,
            1,
            $pdt->price
        );
        Cart::associate($cartItem->rowId, 'App\Product');
        Session::flash('success', 'Product added to cart.');
        return redirect()->route('cart');
    }
}
