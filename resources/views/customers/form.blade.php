
    <div class="card">
        <div class="card-header">
            <b>CUSTOMERS</b>
        </div>
        <div class="card-body">

        <!--'name','business_name','phone','email','address','date_contact','id_form_contact','id_mode_payment','delivery_date','id_sales_person','id_assisted_by'-->

            <div class="row">
                <div class="form-group col-md-5">
                    <div class=" {{ $errors->has('name') ? 'has-error' :'' }}">
                        {{ Form::label('name', 'Name')}}
                        {{ Form::text('name', null, ['class'=>'form-control', 'maxlength'=>'255' ]) }}
                    </div>
                </div>
                <div class="form-group col-md-5">
                    <div class=" {{ $errors->has('business_name') ? 'has-error' :'' }}">
                        {{ Form::label('business_name', 'Business Name') }}
                        {{ Form::text('business_name', null, ['class'=>'form-control', 'maxlength'=>'255']) }}
                    </div>
                </div>
                <div class="form-group col-md-2">
                    <div class=" {{ $errors->has('phone') ? 'has-error' :'' }}">
                        {{ Form::label('phone', 'Phone') }}
                        {{ Form::text('phone', null, ['class'=>'form-control', 'maxlength'=>'20']) }}
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-3">
                    <div class=" {{ $errors->has('email') ? 'has-error' :'' }}">
                        {{ Form::label('email', 'Email') }}
                        {{ Form::email('email', null, ['class'=>'form-control'])}}
                    </div>
                </div>
                <div class="form-group col-md-9">
                    <div class=" {{ $errors->has('address') ? 'has-error' :'' }}">
                        {{ Form::label('address', 'Address') }}
                        {{ Form::text('address', null, ['class'=>'form-control','maxlength'=>'255'])}}
                    </div>
                </div>                
            </div>

            

        </div>
    </div>



