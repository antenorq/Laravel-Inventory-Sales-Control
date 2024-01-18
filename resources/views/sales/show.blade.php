
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<link href="{{ asset('css/app.css') }}" rel="stylesheet">
				
		<title>INVOICE</title>
		
		<style>			
			body{
				background: #fff;
			}
			@media print
			{
				.hide_print{display:none;}
				
				tr:nth-child(odd) td
				{
					background-color: #f3f3f3 !important;
					-webkit-print-color-adjust: exact;
				}
				.header-table
				{
					background-color: #f3f3f3 !important;
					-webkit-print-color-adjust: exact;
				}
			}
		</style>
    </head>
    <body>

	<div class="container">
		<br>
		<div class="logo"><img src="{{ asset('images/logo-igloo-official.png') }}" width="320px" ></div>
		<div style="height:5px;margin-top:10px; background:#0a3e8d; border-radius:8px;"></div>
		<div style="float:right;font-size:40px;margin-top:-70px;"><b>INVOICE</b></div>

		<div class="address" style="margin-top:10px;font-size:14px;">
			<div style="font-size:16px;">124 Norfinch Drive Toronto, ON. M3N 1X1</div>
			<div style="font-size:14.2px;">Tel: 416-663-3051 | Tol Free: 1-888-408-8819 </div>			
		</div>

		<div style="float:right;font-size:16px;margin-top:-50px; text-align:right;">
			Date: {{ $sale->created_at }}<br>
			Invoice Nº: {{ $sale->id }}<br>
		</div>

		<br><br>
		
		<div class="row">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<b>INVOICE TO</b>
					</div>
					<div class="card-body">		
						<table class="table table-striped table-sm responsive">
							<tbody>			 
								<tr>
									<td><b>Customer:</b> {{ $customer->name }}</td>
								</tr>
								<tr>
									<td><b>Addres:</b> {{ $customer->address }}</td>
								</tr>
								<tr>
									<td><b>Delivery Date:</b>: {{ $sale->delivery_date  }}</td>
								</tr>												 	  
							</tbody>
						</table>		  
					</div>
				</div>
			</div>


			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<b>SHIP TO</b>
					</div>
					<div class="card-body">		
						<table class="table table-striped table-sm responsive">
							<tbody>			 
								<tr>
									<td><b>Customer:</b> {{ $customer->name }}</td>
								</tr>
								<tr>
									<td><b>Addres:</b> {{ $customer->address }}</td>
								</tr>
								<tr>
									<td><b>Delivery Date:</b> {{ $sale->delivery_date }}</td>
								</tr>				 	  
							</tbody>
						</table>		  
					</div>
				</div>
			</div>
		</div>
		
		<br><br>

		<table class="table table-striped table-bordered table-sm responsive">
			<thead>                
				<tr class="header-table" style="background:#ddd !important;">                    
					<th width="20%">Model</th>					
					<th width="40%">Product Item</th>
					<th width="10%">Quantity</th>
					<th width="15%">Sale Price</th>
					<th width="15%">Amount</th>		
				</tr>
			</thead>

			<tbody>
				<?php  $subtotal = 0 ?>
				<?php  $total = 0 ?>
				@foreach($products as $key => $product)			

					<tr>
						<td>{{ $product->model }}</td>
					
						<td>{{ $product->name }}</td>
					
						<td>{{ $quantity[$key] }}</td>
					
						<td>CAD $ {{ $product->sale_price }}</td>
					
						<td>CAD $ {{ $quantity[$key] * $product->sale_price }}</td>
					</tr>

					<?php $amount = $quantity[$key] * $product->sale_price; ?>
					<?php $subtotal = $subtotal + $amount; ?>

				@endforeach		 	  
	    	</tbody>
		</table>
		
		<div style="float:right">
			Sales Person: {{ $sales_person->name }} | Assisted By: {{ $assisted_by->name }} | 
			Mode Payment: @if($sale->id_mode_payment == '1') Credit Card @endif
							@if($sale->id_mode_payment == '2') Debit @endif
							@if($sale->id_mode_payment == '3') Cheque @endif
		</div>					

		<br><br>
		
		<div class="row" style="border:solid 1px #ccc;padding:10px;">
			<div class="col-md-9" style="font-size:9px; text-align: justify; text-align: justify;">

				All sales must be in writing on sales order form or invoice to be a valid sale. Igloo Food Equipment must receive a minimum of 30%
				deposit for standard equipment and 50% deposit for special order items as a down payment at the time of order. Deposits are
				non refundable on any purchases. Final payment must be received by Igloo Food Equipment 3 days before the delivery of the
				merchandise. If payment on the delivery is agreed in writing, it must be by cash, certified cheque, money order or bank draft. No
				other payment will be accepted. The delivery person must receive the final payment by any of the above methods before the
				unloading and installation of the equipment. Opening must be large enough to receive equipment and a level area for equipment
				is the purchaser’s responsibility. In the event that the delivery of the merchandise is delayed by the purchaser, then the account
				must be paid immediately in full and is considered as final payment due. Once payment is received, Igloo agrees to
				store the merchandise for the customer for up to six months free of charge at the Igloo Food Equipment location. All goods
				remain the property of Igloo Food Equipment until payment in full is received. Igloo Food Equipment reserves the right to remove
				the equipment from the location if purchaser fails to complete all financial transactions at any time without notice. Igloo Food
				Equipment does not assume responsibility for any equipment not arriving on time as per purchaser’s expectations. Administration
				charge of 2.4 % per month will be charged on all overdue accounts. Delivery is F.O.B. Igloo Warehouse. In the event of the
				cancellation of the merchandise ordered, the deposit will be considered as a non-refundable cancellation fee.

			</div>
			<div class="col-md-3" style="float:right; text-align:right; background:#eee; padding:20px; text-align:center;">	
				
				<b>SUBTOTAL:</b> CAD $ {{$subtotal}}
				<br>
				<b>TOTAL TAX:</b> CAD $ {{ ($subtotal * 13)/100}}
				<br>
				<b>TOTAL:</b> CAD $ {{ $subtotal + ($subtotal * 13)/100 }}
				
			</div>
		</div>

		


		<div style="clear:both;"></div>
		<br><br>
		<div style="float:right; text-align:right;">
			<a href="{{ URL::route('sales.index') }}" class="btn btn-primary hide_print">BACK</a>
			<a href="#" onclick="javascript:window.print()" class="btn btn-primary hide_print">PRINT</a>
		</div>

	</div>	
    </body>
</html>