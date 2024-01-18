@extends('layouts.app')

@section('content')

    {{ Form::open(['route' => 'products.store', 'enctype' => 'multipart/form-data']) }}

		@include('products.form')
		
		<br>
        <div align="right">
		    <a href="{{ URL::route('products.index') }}" class="btn btn-primary">BACK</a>
		    {{ Form::submit('CREATE', ['class' => 'btn btn-success']) }}
		</div>

	{!! Form::close() !!}
	
@endsection


