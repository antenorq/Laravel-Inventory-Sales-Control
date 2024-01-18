
    <div class="card">
        <div class="card-header">
            <b>PRODUCTS</b>
        </div>
        <div class="card-body">

            <div class="row">
                <div class="form-group col-md-4">
                    <div class=" {{ $errors->has('id_category') ? 'has-error' :'' }}">
                        {{ Form::label('category', 'Category')}}
                        {{ Form::select('id_category', $categories, null, ['placeholder' => 'Select Option','class' =>  'form-control']) }}                    
                    </div>
                </div>
                <div class="form-group col-md-2">
                    <div class=" {{ $errors->has('model') ? 'has-error' :'' }}">
                        {{ Form::label('model', 'Model') }}
                        {{ Form::text('model', null, ['class'=>'form-control','maxlength' => 50 ])}}
                    </div>
                </div>
                <div class="form-group col-md-6">
                    <div class=" {{ $errors->has('name') ? 'has-error' :'' }}">
                        {{ Form::label('name', 'Name') }}
                        {{ Form::text('name', null, ['class'=>'form-control'])}}
                    </div>
                </div>
            </div>        

            <div class="row">
                <div class="form-group col-md-3">
                    <div class=" {{ $errors->has('list_price') ? 'has-error' :'' }}">
                        {{ Form::label('list_price', 'List Price') }}
                        {{ Form::text('list_price', null, ['class'=>'form-control'])}}
                    </div>
                </div>
                <div class="form-group col-md-3">
                    <div class=" {{ $errors->has('sale_price') ? 'has-error' :'' }}">
                        {{ Form::label('sale_price', 'Sale Price') }}
                        {{ Form::text('sale_price', null, ['class'=>'form-control'])}}
                    </div>
                </div>
                <div class="form-group col-md-6">
                    <div class=" {{ $errors->has('picture') ? 'has-error' :'' }}">
                        {{ Form::label('picture', 'Picture') }}<br>
                        {{ Form::file('picture', null, ['class'=>'form-control'])}}

                        <!--
                        <form class="m-2" method="post" action="/file-upload" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    {{--<label for="name">File Name</label>--}}
                                    <input type="text" class="form-control" id="name" placeholder="Enter file Name" name="name">
                                </div>
                                <div class="form-group">
                                    <label for="image">Choose Image</label>
                                    <input id="image" type="file" name="image">
                                </div>
                                <button type="submit" class="btn btn-dark d-block w-20 mx-auto">Upload</button>
                        </form>
                        -->

                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class=" {{ $errors->has('description') ? 'has-error' :'' }}">
                    {{ Form::label('description', 'Description') }}
                    {{ Form::textarea('description', null, ['class'=>'form-control','rows'=>'7'])}}
                </div>
            </div>           

            <div class="form-group">
                <div class=" {{ $errors->has('specsheet') ? 'has-error' :'' }}">
                    {{ Form::label('specsheet', 'Specsheet Link') }}
                    {{ Form::text('specsheet', null, ['class'=>'form-control']) }}
                </div>
            </div>

            <div class="form-group">
                <div class=" {{ $errors->has('specs') ? 'has-error' :'' }}">
                    {{ Form::label('specs', 'Specs') }}
                    {{ Form::textarea('specs', null, ['class'=>'form-control','rows'=>'3']) }}
                </div>
            </div>

        </div>
    </div>



