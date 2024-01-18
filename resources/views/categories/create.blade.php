@extends('layouts.app')

@section('content')

    {{ Form::open(['route' => 'categories.store']) }}

		@include('categories.form')
		
		<br>
        <div align="right">
		    <a href="{{ URL::route('categories.index') }}" class="btn btn-primary">BACK</a>
		    {{ Form::submit('CREATE', ['class' => 'btn btn-success']) }}
		</div>

	{!! Form::close() !!}
	
@endsection


