@extends('layouts.app')

@section('content')

    {{ Form::model($product, ['route' => ['products.update', $product->id],'method' => 'PUT','enctype' => 'multipart/form-data']) }}

        @include('products.form')

		<br>
		<div align="right">
			<a href="{{ URL::route('products.index') }}" class="btn btn-primary">BACK</a>
			{{ Form::submit('UPDATE', ['class' => 'btn btn-success']) }}
			{{ Form::hidden('id', $product->id) }}
		</div>

    {!! Form::close() !!}

@endsection
