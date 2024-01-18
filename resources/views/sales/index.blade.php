@extends('layouts.app')

@section('content')
    
    <h4 align="left"><b>SALES</b></h4>

    <!-- @ if(Auth::User()->permission == 1) -->
        <a href = "{{ route('products.index') }}"><button type="button" class="btn btn-success" >CREATE</button></a>
    <!-- @ endif -->
   
    <table id="table_id" class="table table-striped table-bordered data-table display" style="width:100%; background: #fff;">
        <thead>                
            <tr id="" style="background:#eee;">
                <th width="20%">Customer</th>
                <th width="20%">Sales Person</th>
                <th width="10%">Assisted By</th>
                <th width="10%">Delivery Date</th>
                <th width="10%">Mode Payment</th>
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
                order: [3,'desc'],
                ajax: "{{ route('sales.datatable') }}",
                columns: [
                    { data: 'customer.name' },
                    //{ data: 'product.name' },
                    { data: 'salesperson.name'  }, 
                    { data: 'assistedby.name'  }, 
                    { data: 'delivery_date'  }, 
                    { data: 'id_mode_payment'  },
                    { data: 'action', orderable: false, searchable: false, className: 'dt-body-right' },

                ],
            });
        });
    </script>
@endsection
