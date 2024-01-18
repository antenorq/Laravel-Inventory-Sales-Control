<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DataTables;
use Redirect,Response;
use Illuminate\Support\Facades\Auth;

use App\SalesPerson;

use App\Http\Requests\SalesPersonRequest;

class SalesPersonController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        //$data = SalesPerson::get();
        //dd($data);
        return view('sales-people.index');
    }

    public function datatable()
    {        
        $data = SalesPerson::get();

        return DataTables::of($data)
            ->addColumn('action', function($row)
            {
                $action =  '<a href="'.route('sales-people.show', $row->id).'" class="btn btn-sm btn-primary"><i class="fas fa-eye"></i></a>';                                                                
                if(Auth::User()->permission == 1)
                {
                    $action.= '
                    <a href="'.route('sales-people.edit', $row->id).'" class="btn btn-sm btn-success"><i class="fas fa-pen"></i></a>

                    <a class="btn btn-sm btn-danger" href="#" onclick="if(confirm(\'Are you Sure?\')) document.getElementById(\'delete-'.$row->id.'\').submit()"><i class="fa fa-trash"></i></a>
                    <form id="delete-'.$row->id.'" action="'.route('sales-people.destroy', $row->id).'" method="POST">
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
        return view('sales-people.create');
    }

    public function store(SalesPersonRequest $request)
    {
        $data = $request->all();
        $salesperson = new SalesPerson();
        $salesperson->fill($data);

        if($salesperson->save())
        {
            $msg = 'Sales Person created successfully';
            return redirect()->route('sales-people.index')->with('success',$msg);
        }
    }

    public function update(SalesPersonRequest $request, $id)
    {
        $salesperson = SalesPerson::find($id);
        $data = $request->all();
        $salesperson->fill($data);

        if($salesperson->save())
        {
            $msg = 'Sales Person updated successfully';
            return redirect()->route('sales-people.index')->with('success',$msg);
        }
    }

    public function show($id)
    {
        $salesperson = SalesPerson::find($id);        
        return view('sales-people.show',compact('salesperson'));
    }

    public function edit($id)
    {
        $salesperson = SalesPerson::find($id);
        return view('sales-people.edit',['salesperson'=>$salesperson]);
    }

    public function destroy($id)
    {
        $salesperson = SalesPerson::find($id);        
        if($salesperson->delete())
        {
            $msg = 'Sales Person deleted successfully';
            return redirect()->route('sales-people.index')->with('success',$msg);
        }
        
    }
}