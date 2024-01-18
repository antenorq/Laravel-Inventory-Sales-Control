@extends('layouts.app')

@section('content')
    
    <h4 align="left"><b>SALES PEOPLE</b></h4>

    @if(Auth::User()->permission == 1)
        <a href = "{{ route('sales-people.create') }}"><button type="button" class="btn btn-success" >CREATE</button></a>
    @endif

    <table id="table_id" class="table table-striped table-bordered data-table display" style="width:100%; background: #fff;">
        <thead>                
            <tr id="" style="background:#eee;">                                   
                <th width="30%">Name</th>
                <th width="30%">Email</th>
                <th width="30%">Phone</th>
                <th width="30%">Actions</th>            
            </tr>
        </thead>
        <tbody></tbody>
    </table>

@endsection

@section('js')
    <script>
        $( document ).ready(function()
        {
            $('#table_id').DataTable({                
                responsive: true,
                processing: true,
                serverSide: false,
                bLengthChange: false,                  
                language: {                
                    searchPlaceholder: "Search",
                    sSearch: ""
                },
                order: ['0','desc'],

                ajax: "{{ route('sales-people.datatable') }}",
                columns: [                    
                    { data: 'name' },                                       
                    { data: 'email' },
                    { data: 'phone' },                               
                    { data: 'action', orderable: false, searchable: false, className: 'dt-body-right' },
                ],
            });
        });
    </script>
@endsection
