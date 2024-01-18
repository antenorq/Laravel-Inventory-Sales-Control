@extends('layouts.app')

@section('content')

    {{ Form::model($category, ['route' => ['categories.update', $category->id],'method' => 'PUT']) }}

        @include('categories.form')

		<br>
		<div align="right">
			<a href="{{ URL::route('categories.index') }}" class="btn btn-primary">BACK</a>
			{{ Form::submit('UPDATE', ['class' => 'btn btn-success']) }}
			{{ Form::hidden('id', $category->id) }}
		</div>

    {!! Form::close() !!}

@endsection
