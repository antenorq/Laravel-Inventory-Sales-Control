
    <div class="card">
        <div class="card-header">
            <b>SALES</b>
        </div>
        <div class="card-body">

        <!--'id_customer','id_product','id_sales_person','id_assisted_by','delivery_date','id_mode_payment'-->

            
            <div class="card">
                <div class="card-header">
                    <b>LIST PRODUCTS</b>
                </div>
                <div class="card-body" style="background:#FFF;">
                    @foreach($products as $key => $product)                        
                        <div class="row">
                            {{ Form::hidden('id[]', $product->id, ['class'=>'form-control'] )}} 
                            <div class="form-group col-md-1">
                                {{ Form::text('model[]', $product->model, ['class'=>'form-control','readonly'=>'readonly'] )}} 
                            </div>
                            <div class="form-group col-md-7">
                                {{ Form::text('name[]', $product->name, ['class'=>'form-control','readonly'=>'readonly'] )}}
                            </div>
                            <div class="form-group col-md-2">
                                {{ Form::text('sale_price[]', "$ $product->sale_price", ['class'=>'form-control','readonly'=>'readonly'] )}}
                            </div>
                            <div class="form-group col-md-2">
                                {{ Form::text('quantity[]', null, ['class'=>'form-control','placeholder'=>'Quantity'] )}}
                            </div>
                        </div>                   
                    @endforeach
                </div>
            </div>

            <br>

            <div class="row">
                <div class="form-group col-md-3">
                    <div class="{{ $errors->has('id_customer') ? 'has-error' :'' }}">
                        {{ Form::label('customer', 'Customer')}}
                        {{ Form::select('id_customer', $customers, null, ['placeholder' => 'Select Option','class' =>  'form-control']) }}                    
                    </div>
                </div>
                
                <div class="form-group col-md-3">
                    <div class=" {{ $errors->has('id_sales_person') ? 'has-error' :'' }}">
                        {{ Form::label('salesperson', 'Sales Person')}}
                        {{ Form::select('id_sales_person', $salespeople, null, ['placeholder' => 'Select Option','class' =>  'form-control']) }}                    
                    </div>
                </div>
                <div class="form-group col-md-3">
                    <div class=" {{ $errors->has('id_assisted_by') ? 'has-error' :'' }}">
                        {{ Form::label('assisted_by', 'Assisted By')}}
                        {{ Form::select('id_assisted_by', $salespeople, null, ['placeholder' => 'Select Option','class' =>  'form-control']) }}                    
                    </div>
                </div>
            </div>

            <div class="row">                
                <div class="form-group col-md-3">
                    <div class=" {{ $errors->has('delivery_date') ? 'has-error' :'' }}">
                        {{ Form::label('delivery_date', 'Delivery Date') }}
                        {{ Form::text('delivery_date', null, ['class'=>'form-control', 'placeholder'=>'yyyy-mm-dd'])}}
                    </div>
                </div>
                <div class="form-group col-md-3">
                    <div class=" {{ $errors->has('id_mode_payment') ? 'has-error' :'' }}">
                        {{ Form::label('assisted_by', 'Mode Payment')}}
                        {{ Form::select('id_mode_payment', ['1'=>'Credit Card','2'=>'Debit','3'=>'Cheque'], null, ['placeholder' => 'Select Option','class' =>  'form-control']) }}                    
                    </div>
                </div>          
                  
            </div>

        </div>
    </div>



