<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DataTables;
use Redirect,Response;
use Illuminate\Support\Facades\Auth;

use App\Category;

use App\Http\Requests\CategoryRequest;

class CategoryController extends Controller
{
    public function index()
    {
        //$data = Category::with('categoryparent')->get();
        //dd($data);
        return view('categories.index');
    }

    public function datatable()
    {        
        $data = Category::with('categoryparent')->get();

        return DataTables::of($data)            
            ->addColumn('action', function($row)
            {
                $action =  '<a href="'.route('categories.show', $row->id).'" class="btn btn-sm btn-primary"><i class="fas fa-eye"></i></a>';                                                                
                if(Auth::User()->permission == 1)
                {
                    $action.= '
                    <a href="'.route('categories.edit', $row->id).'" class="btn btn-sm btn-success"><i class="fas fa-pen"></i></a>

                    <a class="btn btn-sm btn-danger" href="#" onclick="if(confirm(\'Are you Sure?\')) document.getElementById(\'delete-'.$row->id.'\').submit()"><i class="fa fa-trash"></i></a>
                    <form id="delete-'.$row->id.'" action="'.route('categories.destroy', $row->id).'" method="POST">
                        <input type="hidden" name="_method" value="DELETE">
                        <input type="hidden" name="_token" value="'. csrf_token() .'">
                    </form>
                    ';
                }
                return $action;
            })
            //->addColumn('checkbox', function ($row) { return '<input type="checkbox" name="selected_products[]" value="'.$row->id.'"/>'; })
            //->rawColumns(['action','checkbox'])            
            ->make(true);
    }

    public function create()
    {
        $categories_levels = new Category();
        $categories = $categories_levels->getCategorieslevels();
        return view('categories.create',['categories'=>$categories]);
    }

    public function store(CategoryRequest $request)
    {
        $data = $request->all();
        $category = new Category();
        $category->fill($data);

        if($category->save())
        {
            $msg = 'Category created successfully';
            return redirect()->route('categories.index')->with('success',$msg);
        }
    }

    public function update(CategoryRequest $request, $id)
    {
        $category = Category::find($id);
        $data = $request->all();
        $category->fill($data);

        if($category->save())
        {
            $msg = 'Category updated successfully';
            return redirect()->route('categories.index')->with('success',$msg);
        }
    }

    public function show($id)
    {
        $category = Category::find($id);        
        return view('categories.show',compact('category'));
    }

    public function edit($id)
    {
        $category = Category::find($id);
        $categories = Category::orderBy('name')->pluck('name','id');
        return view('categories.edit',['category'=>$category,'categories'=>$categories]);
    }

    public function destroy($id)
    {
        $category = Category::find($id);        
        if($category->delete())
        {
            $msg = 'Category deleted successfully';
            return redirect()->route('categories.index')->with('success',$msg);
        }
        
    }
}
