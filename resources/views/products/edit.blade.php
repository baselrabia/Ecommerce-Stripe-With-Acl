@extends('layouts.app')

@section('content')



<div class="col-md-8 col-md-offset-2">
    <div class="card">

        <div class="card-body">
            <h5 class="card-title">Dashboard</h5>

            <form action="{{ route('products.update', ['id' => $product->id ]) }}" method="post">
                {{ csrf_field() }}
                {{ method_field('PUT') }}
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" name="name" value="{{ $product->name }}" class="form-control">
                </div>
                <div class="form-group">
                    <label for="image">Price</label>
                    <input type="number" name="price" value="{{ $product->price }}" class="form-control">
                </div>
                <div class="form-group">
                    <label for="image">Image</label>
                    <div class="card" style="width: 15rem;height:15rem;">
                        <img class="card-img-top" src="/uploads/products/{{ $product->image }}" alt="Smiley face" height="100%" width="100%">
                    </div></br>
                    <input type="file" name="image" class="form-control">
                </div>
                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea name="description" id="description" cols="30" rows="10" class="form-control">{{ $product->description }}</textarea>
                </div>
                <div class="form-group">
                    <button class="form-control btn btn-success">Save Product</button>
                </div>
            </form>
        </div>
    </div>
</div>

@endsection
