@extends('layouts.app')

@section('content')
	

<div class="card">
	<div class="card-header">
		<div style="float:left;">SALES PERSON:</div>
	</div>
	<div class="card-body">		
		<table class="table table-striped responsive">
		    <tbody>			 
				<tr>
					<td><b>Name</b>: {{strtoupper($salesperson->name)}}</td>
				</tr>
				<tr>
					<td><b>Phone</b>: {{strtoupper($salesperson->phone)}}</td>
				</tr>				
				<tr>
					<td><b>Email</b>: {{$salesperson->email}}</td>
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