@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <div class="container-fluid dashboard">
                        <div class="row">
                            <div class="col-md-3"><a href="/products"><div class="option_buttom"><img class="img_icon" src="{{ asset('images/product.png') }}"/><br/>PRODUCTS</div></a></div>  
                            <div class="col-md-3"><a href="/customers"><div class="option_buttom"><img class="img_icon" src="{{ asset('images/clients.png') }}"/><br/>CUSTOMERS (CRM)</div></a></div>
                            <div class="col-md-3"><a href="/sales-people"><div class="option_buttom"><img class="img_icon" src="{{ asset('images/salesperson.png') }}"/><br/>SALES PEOPLE</div></a></div>
                            <div class="col-md-3"><a href="/sales"><div class="option_buttom"><img class="img_icon" src="{{ asset('images/sales.png') }}"/><br/>SALES</div></a></div>                             
                            <div class="col-md-3"><a href="/categories"><div class="option_buttom"><img class="img_icon" src="{{ asset('images/category.png') }}"/><br/>CATEGORIES</div></a></div>
                            <div class="col-md-3"><div class="option_buttom"><img class="img_icon" src="{{ asset('images/commission.png') }}"/><br/>COMISSION</div></div>    
                            <div class="col-md-3"><div class="option_buttom"><img class="img_icon" src="{{ asset('images/report.png') }}"/><br/>REPORT</div></div>   

                            @if(Auth::User()->permission == 1)
                                <div class="col-md-3"><a href="/users"><div class="option_buttom"><img class="img_icon" src="{{ asset('images/users.png') }}"/><br/>USERS</div></a></div>                                 
                                
                                <!--
                                @if (Route::has('register'))
                                    <li class="nav-item">
                                        <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                    </li>
                                @endif
                                -->
                            @endif                            
                        </div>
                        <br>                        
                    </div>

                </div>

            </div>
        </div>
    </div>
</div>
@endsection
