@extends('layouts.app')

@section('content')
    
    <h4 align="left"><b>CATEGORIES</b></h4>

    @if(Auth::User()->permission == 1)
        <a href = "{{ route('categories.create') }}"><button type="button" class="btn btn-success" >CREATE</button></a>
    @endif

    <table id="table_id" class="table table-striped table-bordered data-table display" style="width:100%; background: #fff;">
        <thead>                
            <tr id="" style="background:#eee;">                         
                <th width="40%">Name</th>
                <th width="40%">Category Parent</th>
                <th width="10%">Level</th>                                        
                <th width="10%">Action</th>                    
            </tr>
        </thead>
        <tbody></tbody>
    </table>
	
@endsection

@section('js')
    <script>
        $( document ).ready(function()
        {
            var table = $('#table_id').DataTable({                
                responsive: true,
                processing: true,
                serverSide: false,
                bLengthChange: false,                  
                language: {                
                    searchPlaceholder: "Search",
                    sSearch: ""
                },

                order: [2,'asc'],
                ajax: "{{ route('categories.datatable') }}",
                columns: [                     
                    { data: 'name' },
                    { data: 'categoryparent.name', defaultContent: '-'},
                    { data: 'level' },                                                                        
                    { data: 'action', orderable: false, searchable: false, className: 'dt-body-right' },                    
                ],
            });
        });
    </script>
@endsection
