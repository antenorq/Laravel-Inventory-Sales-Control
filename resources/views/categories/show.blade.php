@extends('layouts.app')

@section('content')
	

<div class="card">
	<div class="card-header">
		<div style="float:left;">CATEGORY:</div>		
	</div>
	<div class="card-body">		
		<table class="table table-striped responsive">
		    <tbody>
				<tr>
					<td><b>Category Parent</b>: <?php if ($category->id_category_parent) { echo $category->categoryparent->name; } else {echo '-';} ?></td>
				</tr>
				<tr>
					<td><b>Name</b>: {{$category->name}}</td>
				</tr>		 	  
	    	</tbody>
		</table>
		  
	</div>

</div>
<br>
<div align="right">
	<a href="{{ URL::route('categories.index') }}" class="btn btn-primary">BACK</a>
</div>

@endsection