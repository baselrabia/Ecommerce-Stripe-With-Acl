@extends('layouts.app')

@section('content')

        <div class="col-md-8 col-md-offset-2">
            <div class="card">

                <div class="card-body">
                    <h5 class="card-title">Products</h5>

                    <table class="table">
                        <thead>
                            <th>
                                Name
                            </th>
                            <th>
                                Price
                            </th>
                            <th>
                                Edit
                            </th>
                            <th>
                                Delete
                            </th>
                        </thead>
                        <tbody>
                            @foreach($products as $product)
                            <tr>
                                <td>{{ $product->name }}</td>
                                <td>{{ $product->price }}</td>
                                <td>
                                    <a href="{{ route('products.edit', ['id' => $product->id ]) }}" class="btn btn-default btn-xs">Edit</a>
                                </td>
                                <td>
                                    <form action="{{ route('products.destroy', ['id' => $product->id ]) }}" method="post">
                                        {{ csrf_field() }}
                                        {{ method_field('DELETE') }}
                                        <button class="btn btn-xs btn-danger">Delete</button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

@endsection
