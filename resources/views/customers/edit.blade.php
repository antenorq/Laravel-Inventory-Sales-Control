@extends('layouts.app')

@section('content')

    {{ Form::model($customer, ['route' => ['customers.update', $customer->id],'method' => 'PUT']) }}

        @include('customers.form')

		<br>
		<div align="right">
			<a href="{{ URL::route('customers.index') }}" class="btn btn-primary">BACK</a>
			{{ Form::submit('UPDATE', ['class' => 'btn btn-success']) }}
			{{ Form::hidden('id', $customer->id) }}
		</div>

    {!! Form::close() !!}

@endsection
