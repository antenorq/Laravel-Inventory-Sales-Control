
    <div class="card">
        <div class="card-header">
            <b>CATEGORY</b>
        </div>
        <div class="card-body">

            <div class="row">
                <div class="form-group col-md-4">
                    <div class=" {{ $errors->has('id_category_parent') ? 'has-error' :'' }}">
                        {{ Form::label('category', 'Category Parent')}}
                        {{ Form::select('id_category_parent', $categories, null, ['placeholder' => 'Select Option','class' =>  'form-control']) }}                    
                    </div>
                </div>
                
                <div class="form-group col-md-4">
                    <div class=" {{ $errors->has('name') ? 'has-error' :'' }}">
                        {{ Form::label('name', 'Name') }}
                        {{ Form::text('name', null, ['class'=>'form-control'])}}
                    </div>
                </div>

                <div class="form-group col-md-1">
                    <div class=" {{ $errors->has('level') ? 'has-error' :'' }}">
                        {{ Form::label('level', 'Level') }}
                        {{ Form::select('level', [''=>'','1'=>'1','2'=>'2','3'=>'3'], null, ['class'=>'form-control'])}}
                    </div>
                </div>
            </div>        

        </div>
    </div>



