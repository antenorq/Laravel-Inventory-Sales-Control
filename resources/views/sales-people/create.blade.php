@extends('layouts.app')

@section('content')

    {{ Form::open(['route' => 'sales-people.store']) }}

		@include('sales-people.form')
		
		<br>
        <div align="right">
		    <a href="{{ URL::route('sales-people.index') }}" class="btn btn-primary">BACK</a>
		    {{ Form::submit('CREATE', ['class' => 'btn btn-success']) }}
		</div>

	{!! Form::close() !!}
	
@endsection