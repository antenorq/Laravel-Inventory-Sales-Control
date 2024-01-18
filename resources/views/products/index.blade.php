@extends('layouts.app')

@section('content')
    
    <h4 align="left"><b>PRODUCTS</b></h4>
    <form id="form" action="/sales/create">

        @if(Auth::User()->permission == 1)
            <a href = "{{ route('products.create') }}"><button type="button" class="btn btn-success" >CREATE</button></a>
        @endif

        <input class="btn btn-success" type="submit" value="REGISTER SALES" />
        

        <table id="table_id" class="table table-striped table-bordered data-table display" style="width:100%; background: #fff;">
            <thead>                
                <tr id="" style="background:#eee;">     
                    <!--<th ></th>-->
                    <th width="10%">Model</th>
                    <th width="40%">Name</th>
                    <th width="15%">Category</th>
                    <th width="10%">L Price</th>
                    <th width="10%">S Price</th>
                    <th width="15%">Action</th>
                    <th width="15%">Sell</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </form>

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
                
                columnDefs: [
                    {
                        'targets': 6,
                        'checkboxes': {
                            'selectRow': true
                        }
                    }
                ],                

                order: [1,'asc'],
                ajax: "{{ route('products.datatable') }}",
                columns: [
                    
                    { data: 'model' },
                    { data: 'name' },
                    { data: 'category.name' }, 
                    { data: 'list_price'  }, 
                    { data: 'sale_price'  },                                       
                    { data: 'action', orderable: false, searchable: false, className: 'dt-body-right' },
                    { data: 'id' },
                   // { data: 'checkbox' , orderable: false, searchable: false }
                ],
            });


            $('#form').on('submit', function(e)
            {
                var form = this;                
                var rows_selected = table.column(6).checkboxes.selected();
                // Iterate over all selected checkboxes
                $.each(rows_selected, function(index, rowId){
                    // Create a hidden element 
                    $(form).append(
                        $('<input>')
                            .attr('type', 'hidden')
                            .attr('name', 'id[]')
                            .val(rowId)
                    );
                });
            });
            


        });
    </script>
@endsection
