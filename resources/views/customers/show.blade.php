@extends('layouts.app')

@section('content')
	

<div class="card">
	<div class="card-header">
		<div style="float:left;">CUSTOMER:</div>
	</div>
	<div class="card-body">		
		<table class="table table-striped responsive">
		    <tbody>			 
				<tr>
					<td><b>Name</b>: {{strtoupper($customer->name)}}</td>
				</tr>
				<tr>
					<td><b>Business Name</b>: {{$customer->business_name}}</td>
				</tr>
				<tr>
					<td><b>Phone</b>: {{$customer->phone}}</td>
				</tr>
				<tr>
					<td><b>Email</b>: {{$customer->email}}</td>
				</tr>
				<tr>
					<td><b>Address</b>: {{$customer->address}}</td>
				</tr>
				<tr>
					<td><b>Created At</b>: {{$customer->created_at}}</td>
				</tr>				
							 	  
	    	</tbody>
		</table>
		  
	</div>

</div>
<br>
<div align="right">
	<a href="{{ URL::route('customers.index') }}" class="btn btn-primary">BACK</a>
</div>

@endsection