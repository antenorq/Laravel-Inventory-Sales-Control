<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DataTables;
use Redirect,Response;
use Illuminate\Support\Facades\Auth;

use App\Category;
use App\Customer;
use App\SalesPerson;
use App\Product;
use App\Sale;
use App\SaleProduct;

use App\Http\Requests\SaleRequest;
use DB;

class SaleController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        //$data = Sale::with('customer','product','salesperson','assistedby')->get();
        //dd($data);
        return view('sales.index');
    }

    public function datatable()
    {        
        $data = Sale::with('customer','product','salesperson','assistedby')->get();

        return DataTables::of($data)            
            ->addColumn('action', function($row)
            {
                $action =  '<a href="'.route('sales.show', $row->id).'" class="btn btn-sm btn-primary"><i class="fas fa-eye"></i></a>';                                                                
                if(Auth::User()->permission == 1)
                {
                    $action.= '
                    <!--<a href="'.route('sales.edit', $row->id).'" class="btn btn-sm btn-success"><i class="fas fa-pen"></i></a>-->

                    <!--
                    <a class="btn btn-sm btn-danger" href="#" onclick="if(confirm(\'Are you Sure?\')) document.getElementById(\'delete-'.$row->id.'\').submit()"><i class="fa fa-trash"></i></a>
                    <form id="delete-'.$row->id.'" action="'.route('sales.destroy', $row->id).'" method="POST">
                        <input type="hidden" name="_method" value="DELETE">
                        <input type="hidden" name="_token" value="'. csrf_token() .'">
                    </form>
                    -->
                    ';
                }
                return $action;
            })            
            ->make(true);
    }

    public function create()
    {
        //dd($_GET);

        if(isset($_GET['id']))
        {
            $products_id = $_GET['id'];

            $categories = Category::orderBy('name')->pluck('name','id');
            $salespeople = SalesPerson::orderBy('name')->pluck('name','id');
            //$products = Product::orderBy('name')->pluck('name','id');
            $products = Product::whereIn('id',$products_id)->get();
            //dd($products);
            
            $customers = Customer::orderBy('name')->pluck('name','id');
            return view('sales.create',['categories'=>$categories,'products'=>$products,'salespeople'=>$salespeople,'customers'=>$customers]);
        }
        else
        {
            $msg = "Before click REGISTER SALE you need choose products";
            return redirect()->route('products.index')->with('error', $msg);
        }

    }

    public function store(SaleRequest $request)
    {
        $data = $request->all();
        $inputsProduct = $request->only('id','quantity'); //id_product - quantity

        DB::beginTransaction();
        try
        {
            //SAVE SALE
            $sale = new Sale();
            $sale->fill($data);
            $sale->save();
            
            // SAVE PRODUCTS OF SALE
            for($i = 0; $i < count($inputsProduct['id']); $i++)
            {
                $sale_products = new SaleProduct;
                $sale_products->id_sale    = $sale->id;
                $sale_products->id_product = $inputsProduct['id'][$i];
                $sale_products->quantity   = $inputsProduct['quantity'][$i];
                $sale_products->save();
            }

            DB::commit();
            return redirect()->route('sales.show',$sale->id)->with('success', 'Sale successfully registered');
        }
        catch(\Exception $e)
        {
            DB::rollback();
            return back()->with('error', 'Something wrong happened saving the sales. Contact Us');
        }

    }

    public function update(CustomerRequest $request, $id)
    {
        $sale = Sale::find($id);
        $data = $request->all();
        $sale->fill($data);

        if($sale->save())
        {
            $msg = 'Sale updated successfully';
            return redirect()->route('sales.index')->with('success',$msg);
        }
    }

    public function show($id)
    {
        $sale = Sale::find($id);
        $customer = Customer::find($sale->id_customer);
        $sales_products =  SaleProduct::where('id_sale', $id)->get();
        $sales_person = SalesPerson::find($sale->id_sales_person);
        $assisted_by = SalesPerson::find($sale->id_assisted_by);

        // GET ALL PRODUCT IN THIS SALE
        for($i = 0; $i < count($sales_products); $i++)
        {
            $products[] = Product::where('id', $sales_products[$i]->id_product)->first();
            $quantity[] = $sales_products[$i]->quantity;
        }

        //dd($sale, $products, $quantity, $customer, $sales_person, $assisted_by);
        return view('sales.show',compact('sale','customer','products','quantity','sales_person','assisted_by'));
    }

    public function edit($id)
    {
        $sale = Sale::find($id);
        $salespeople = SalesPerson::orderBy('name')->pluck('name','id');
        $products = Product::orderBy('name')->pluck('name','id');
        $customers = Customer::orderBy('name')->pluck('name','id');
        return view('customers.edit',['sale'=>$sale,'products'=>$products,'salespeople'=>$salespeople,'customers'=>$customers]);
    }

    public function destroy($id)
    {
        $sale = Sale::find($id);        
        if($sale->delete())
        {
            $msg = 'Sale deleted successfully';
            return redirect()->route('sales.index')->with('success',$msg);
        }
    }
}