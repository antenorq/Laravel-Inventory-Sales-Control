<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DataTables;
use Redirect,Response;
use Illuminate\Support\Facades\Auth;

use App\Customer;
use App\SalesPerson;

use App\Http\Requests\CustomerRequest;
use DB;

class CustomerController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        //$data = Customer::with('salesperson','assistedby')->get();
        //dd($data);
        return view('customers.index');
    }

    public function datatable()
    {        
        $data = Customer::get();

        return DataTables::of($data)            
            ->addColumn('action', function($row)
            {
                $action = '<a href="'.route('customers.show', $row->id).'" class="btn btn-sm btn-primary"><i class="fas fa-eye"></i></a> ';                                                                             
                $action.= '<a href="'.route('customers.edit', $row->id).'" class="btn btn-sm btn-success"><i class="fas fa-pen"></i></a>';
                
                if(Auth::User()->permission == 1)
                {
                    $action.='
                    <a class="btn btn-sm btn-danger" href="#" onclick="if(confirm(\'Are you Sure?\')) document.getElementById(\'delete-'.$row->id.'\').submit()"><i class="fa fa-trash"></i></a>
                    <form id="delete-'.$row->id.'" action="'.route('customers.destroy', $row->id).'" method="POST">
                        <input type="hidden" name="_method" value="DELETE">
                        <input type="hidden" name="_token" value="'. csrf_token() .'">
                    </form>
                    ';
                }
                return $action;
            })            
            ->make(true);
    }

    public function create()
    {
        return view('customers.create');
    }

    public function store(CustomerRequest $request)
    {
        $data = $request->all();
        $customer = new Customer();
        $customer->fill($data);

        if($customer->save())
        {
            $msg = 'Customer created successfully';
            return redirect()->route('customers.index')->with('success',$msg);
        }
    }

    public function update(CustomerRequest $request, $id)
    {
        $customer = Customer::find($id);
        $data = $request->all();
        $customer->fill($data);

        if($customer->save())
        {
            $msg = 'Customer updated successfully';
            return redirect()->route('customers.index')->with('success',$msg);
        }
    }

    public function show($id)
    {
        $customer = Customer::find($id);        
        return view('customers.show',compact('customer'));
    }

    public function edit($id)
    {
        $customer = Customer::find($id);
        return view('customers.edit',['customer'=>$customer]);
    }

    public function destroy($id)
    {
        $customer = Customer::find($id); 
        
        try
        {    
            $customer->delete();      
            DB::commit();
            $msg = 'Customer deleted successfully';
            return redirect()->route('customers.index')->with('success',$msg);
        }
        catch(\Exception $e)
        {
            DB::rollback();
            $msg = 'Customer cannot be deleted, because there are relations with sales';
            return redirect()->route('customers.index')->with('error',$msg);
        }
        
    }
}