@extends('layouts.app')

@section('content')
<script>
    error=false;
    function validate()
    {
        if(document.userForm.name.value !='' && document.userForm.email.value !='' )
            document.userForm.btnsave.disabled=false
        else
            document.userForm.btnsave.disabled=true
    }
</script>


<div class="container">
        
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-right">
                <a class="btn btn-success mb-2" id="new-user" href="{{ route('register') }}" >New User</a>
            </div>
        </div>
    </div>

        <table class="table table-striped table-bordered data-table display" style="width:100%; background: #fff;">
            <thead>
                <tr id="">
                    <th width="5%">Id</th>
                    <th width="30%">Name</th>
                    <th width="30%">Email</th>
                    <th width="30%">Action</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>

    <!-- Add and Edit customer modal -->
    <div class="modal fade" id="crud-modal" aria-hidden="true" >
    <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-header">
    <h4 class="modal-title" id="userCrudModal"></h4>
    </div>
    <div class="modal-body">
    <form name="userForm" action="{{ route('users.store') }}" method="POST">
    <input type="hidden" name="user_id" id="user_id" >
    @csrf
    <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12">
    <div class="form-group">
    <strong>Name:</strong>
    <input type="text" name="name" id="name" class="form-control" placeholder="Name" onchange="validate()" >
    </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
    <div class="form-group">
    <strong>Email:</strong>
    <input type="text" name="email" id="email" class="form-control" placeholder="Email" onchange="validate()">
    </div>
    </div>

    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
    <button type="submit" id="btn-save" name="btnsave" class="btn btn-primary" disabled>Save</button>
    <a href="{{ route('users.index') }}" class="btn btn-danger">Cancel</a>
    </div>
    </div>
    </form>
    </div>
    </div>
    </div>
    </div>

    <!-- Show user modal -->
    <div class="modal fade" id="crud-modal-show" aria-hidden="true" >
    <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-header">
    <h4 class="modal-title" id="userCrudModal-show"></h4>
    </div>
    <div class="modal-body">
    <div class="row">
    <div class="col-xs-2 col-sm-2 col-md-2"></div>
    <div class="col-xs-10 col-sm-10 col-md-10 ">

    <table class="table-responsive ">
    <tr height="50px"><td><strong>Name:</strong></td><td id="sname"></td></tr>
    <tr height="50px"><td><strong>Email:</strong></td><td id="semail"></td></tr>

    <tr><td></td><td style="text-align: right "><a href="{{ route('users.index') }}" class="btn btn-danger">OK</a> </td></tr>
    </table>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>



    <script type="text/javascript">

    $(document).ready(function ()
    {

        var table = $('.data-table').DataTable({
            responsive: true,
            processing: true,
            serverSide: true,
            "bLengthChange": false,
            "oLanguage": {
                "sSearch": ""
            },
            //"bFilter": false,
            ajax: "{{ route('users.index') }}",
            columns: [
                //{data: 'DT_RowIndex', name: 'DT_RowIndex'},
                {data: 'id', name: 'id'},
                {data: 'name', name: 'name'},
                {data: 'email', name: 'email'},
                {data: 'action', name: 'action', orderable: false, searchable: false},
            ]
        });

        /* When click New customer button */
        /*
        $('#new-user').click(function () {
            $('#btn-save').val("create-user");
            $('#user').trigger("reset");
            $('#userCrudModal').html("Add New User");
            $('#crud-modal').modal('show');
        });
        */

        /* Edit customer */
        $('body').on('click', '#edit-user', function () {
        var user_id = $(this).data('id');
        $.get('users/'+user_id+'/edit', function (data) {
        $('#userCrudModal').html("Edit User");
        $('#btn-update').val("Update");
        $('#btn-save').prop('disabled',false);
        $('#crud-modal').modal('show');
        $('#user_id').val(data.id);
        $('#name').val(data.name);
        $('#email').val(data.email);

        })
        });
        /* Show customer */
        $('body').on('click', '#show-user', function () {
        var user_id = $(this).data('id');
        $.get('users/'+user_id, function (data) {

        $('#sname').html(data.name);
        $('#semail').html(data.email);

        })
        $('#userCrudModal-show').html("User Details");
        $('#crud-modal-show').modal('show');
        });

        /* Delete customer */
        $('body').on('click', '#delete-user', function ()
        {
            var user_id = $(this).data("id");
            var token = $("meta[name='csrf-token']").attr("content");
            confirm("Are You sure want to delete !");

            $.ajax({
                type: "DELETE",
                url: "{{ url('/users') }}/" + user_id,
                data: {
                    "id": user_id,
                    "_token": token,
                },
                success: function (data) {

                //$('#msg').html('Customer entry deleted successfully');
                //$("#customer_id_" + user_id).remove();
                table.ajax.reload();
                },
                error: function (data) {
                    console.log('Error:', data);
                }
            });
        });

    });

    </script>
@endsection