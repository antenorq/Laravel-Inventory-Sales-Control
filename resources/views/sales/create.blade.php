@extends('layouts.app')

@section('content')

    {{ Form::open(['route' => 'sales.store']) }}

		@include('sales.form')
		
		<br>
        <div align="right">
		    <a href="{{ URL::route('sales.index') }}" class="btn btn-primary">BACK</a>
		    {{ Form::submit('CREATE', ['class' => 'btn btn-success']) }}
		</div>

	{!! Form::close() !!}
	
@endsection


