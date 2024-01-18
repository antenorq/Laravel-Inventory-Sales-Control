
    <div class="card">
        <div class="card-header">
            <b>SALES PERSON</b>
        </div>
        <div class="card-body">

            <div class="row">
                <div class="form-group col-md-4">
                    <div class=" {{ $errors->has('name') ? 'has-error' :'' }}">
                        {{ Form::label('name', 'Name')}}
                        {{ Form::text('name', null, ['class'=>'form-control', 'maxlength'=>'200' ]) }}
                    </div>
                </div>
                <div class="form-group col-md-4">
                    <div class=" {{ $errors->has('email') ? 'has-error' :'' }}">
                        {{ Form::label('email', 'Email') }}
                        {{ Form::text('email', null, ['class'=>'form-control', 'maxlength'=>'200']) }}
                    </div>
                </div> 
                <div class="form-group col-md-4">
                    <div class=" {{ $errors->has('phone') ? 'has-error' :'' }}">
                        {{ Form::label('phone', 'Phone') }}
                        {{ Form::text('phone', null, ['class'=>'form-control', 'maxlength'=>'200']) }}
                    </div>
                </div>               
            </div>

        </div>
    </div>



