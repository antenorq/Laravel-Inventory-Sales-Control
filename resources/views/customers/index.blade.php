@extends('layouts.app')

@section('content')
    
    <h4 align="left"><b>CUSTOMERS</b></h4>

    <!--@ if(Auth::User()->permission == 1)-->
        <a href = "{{ route('customers.create') }}"><button type="button" class="btn btn-success" >CREATE</button></a>
    <!--@ endif-->

    

    <table id="table_id" class="table table-striped table-bordered data-table display" style="width:100%; background: #fff;">
        <thead>                
            <tr id="" style="background:#eee;"> 
                <th width="">Id</th>                   
                <th width="20%">Name</th>
                <th width="20%">Business Name</th>
                <th width="10%">Phone</th>
                <th width="20%">Email</th>
                <th width="20%">Address</th>
                <th width="10%">Actions</th>            
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

                ajax: "{{ route('customers.datatable') }}",
                columns: [
                    { data: 'id', visible:false },
                    { data: 'name' },
                    { data: 'business_name' },
                    { data: 'phone'  }, 
                    { data: 'email'  }, 
                    { data: 'address'  },            
                    { data: 'action', orderable: false, searchable: false, className: 'dt-body-right' },

                ],
            });
        });
    </script>
@endsection
