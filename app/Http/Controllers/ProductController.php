<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DataTables;
use Redirect,Response;
use Illuminate\Support\Facades\Auth;

use App\Product;
use App\Category;

use App\Http\Requests\ProductRequest;

use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Session;
use DB;

class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        //$data = Product::with('category')->get();
        //dd($data);
        return view('products.index');
    }

    public function datatable()
    {        
        $data = Product::with('category')->get();

        return DataTables::of($data)            
            ->addColumn('action', function($row)
            {
                $action =  '<a href="'.route('products.show', $row->id).'" class="btn btn-sm btn-primary"><i class="fas fa-eye"></i></a>';                                                                
                if(Auth::User()->permission == 1)
                {
                    $action.= '
                    <a href="'.route('products.edit', $row->id).'" class="btn btn-sm btn-success"><i class="fas fa-pen"></i></a>

                    <a class="btn btn-sm btn-danger" href="#" onclick="if(confirm(\'Are you Sure?\')) document.getElementById(\'delete-'.$row->id.'\').submit()"><i class="fa fa-trash"></i></a>
                    <form id="delete-'.$row->id.'" action="'.route('products.destroy', $row->id).'" method="POST">
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
        $categories_levels = new Category();
        $categories = $categories_levels->getCategorieslevels();        

        return view('products.create',['categories'=>$categories]);
    }

    public function store(ProductRequest $request)
    {
        $data = $request->all();
        $product = new Product();
        $product->fill($data);

        try
        { 

            if ($request->hasFile('picture'))
            {
                //  Let's do everything here
                if ($request->file('picture')->isValid())
                {
                    $request->validate([                    
                        'picture' => 'mimes:jpg,jpeg,png|max:2014',
                    ]);
                    $extension = $request->picture->extension();

                    $request->picture->storeAs('/public', $request->model.".".$extension);
                    $url = Storage::url($request->model.".".$extension);
                    $product->picture = $url;
                }
            }
          
            $product->save();       
            $msg = 'Product created successfully';
            return redirect()->route('products.index')->with('success',$msg);       
        }
        catch(\Exception $e)
        {
            $msg = 'Something went Wrong. Product cannot be created. Please contact the system administrator';
            return redirect()->route('products.index')->with('error',$msg);
            //return redirect()->route('products.index')->with('error',$msg. ' ---- '. $e->getMessage());
        }

    }

    public function update(ProductRequest $request, $id)
    {
        $product = Product::find($id);
        $data = $request->all();
        $product->fill($data);


        if ($request->hasFile('picture')) {
            //  Let's do everything here
            if ($request->file('picture')->isValid()) {
                //
                $request->validate([                    
                    'picture' => 'mimes:jpg,jpeg,png|max:2014',
                ]);
                $extension = $request->picture->extension();

                $request->picture->storeAs('/public', $request->model.".".$extension);
                $url = Storage::url($request->model.".".$extension);
                $product->picture = $url;
            }
        }

        if($product->save())
        {
            $msg = 'Product updated successfully';
            return redirect()->route('products.index')->with('success',$msg);
        }
    }

    public function show($id)
    {
        $product = Product::find($id);        
        return view('products.show',compact('product'));
    }

    public function edit($id)
    {
        $product = Product::find($id);
        $categories = Category::orderBy('name')->pluck('name','id');
        return view('products.edit',['product'=>$product,'categories'=>$categories]);
    }

    public function destroy($id)
    {
        $product = Product::find($id);        

        try
        {    
            $product->delete();      
            DB::commit();
            $msg = 'Product deleted successfully';
            return redirect()->route('products.index')->with('success',$msg);
        }
        catch(\Exception $e)
        {
            DB::rollback();
            $msg = 'Product cannot be deleted because there are relations with others modules (sales,categories)';
            return redirect()->route('products.index')->with('error',$msg);
            //return redirect()->route('products.index')->with('error',$msg. ' ---- '. $e->getMessage());
        }


        
    }
}