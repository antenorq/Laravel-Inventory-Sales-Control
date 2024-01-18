@extends('layouts.app')

@section('content')

    {{ Form::open(['route' => 'customers.store']) }}

		@include('customers.form')
		
		<br>
        <div align="right">
		    <a href="{{ URL::route('customers.index') }}" class="btn btn-primary">BACK</a>
		    {{ Form::submit('CREATE', ['class' => 'btn btn-success']) }}
		</div>

	{!! Form::close() !!}
	
@endsection


