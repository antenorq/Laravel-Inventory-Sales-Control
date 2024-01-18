@extends('layouts.app')

@section('content')

    {{ Form::model($salesperson, ['route' => ['sales-people.update', $salesperson->id],'method' => 'PUT']) }}

        @include('sales-people.form')

		<br>
		<div align="right">
			<a href="{{ URL::route('sales-people.index') }}" class="btn btn-primary">BACK</a>
			{{ Form::submit('UPDATE', ['class' => 'btn btn-success']) }}
			{{ Form::hidden('id', $salesperson->id) }}
		</div>

    {!! Form::close() !!}

@endsection
