<?php

namespace App\Http\Controllers;

use Gloudemans\Shoppingcart\Facades\Cart;
use Stripe\Stripe;
use Stripe\Charge;
use Mail;
use Session;

class CheckoutController extends Controller
{

    public function index(){

        if (Cart::content()->count() == 0) {
            Session::flash('info', 'Your cart is still empty . First Do some shopping');
            return redirect()->back();
        }
        return view('checkout');

    }

    public function pay(){

        Stripe::setApiKey('sk_test_SCpoR59ExD2dsGdVTsWVblv500yNK3drMY');

        $charge = Charge::create([
            'amount' => Cart::total() * 100,
            'currency' => 'usd',
            'description' => 'Programming Bookshop',
            'source' => request()->stripeToken
        ]);

        Session::flash('success', 'Purchase successfull. wait for our email.');
        Cart::destroy();

        Mail::to(request()->stripeEmail)->send(new \App\Mail\PurchaseSuccessful);

        return redirect('/');




    }

}
