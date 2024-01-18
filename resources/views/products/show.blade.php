@extends('layouts.app')

@section('content')
	

<div class="card">
	<div class="card-header">
		<div style="float:left;">PRODUCT: <b>{{strtoupper($product->name)}}</b></div>		
	</div>
	<div class="card-body">
		<div align="left"><img class="img-responsive" width="120px" src='{{url("$product->picture")}}'></div><br>
		<table class="table table-striped responsive">
		    <tbody>
				<tr>
					<td><b>Category</b>: {{$product->category->name}}</td>
				</tr>
				<tr>
					<td><b>Model</b>: {{$product->model}}</td>
				</tr>
				<tr>
					<td><b>Description</b>: {{$product->description}}</td>
				</tr>
				<tr>
					<td><b>List Price</b>: {{$product->list_price}}</td>
				</tr>
				<tr>
					<td><b>Sale Price</b>: {{$product->sale_price}}</td>
				</tr>				
				<tr>
					<td><b>Specsheet</b>: <a href="{{$product->specsheet}}" class="btn btn-primary" target="_blank">PDF</a></td>
				</tr>
				<tr>
					<td><b>Specs</b>: {{$product->specs}}</td>
				</tr>				 	  
	    	</tbody>
		</table>
		  
	</div>

</div>
<br>
<div align="right">
	<a href="{{ URL::route('products.index') }}" class="btn btn-primary">BACK</a>
</div>

@endsection