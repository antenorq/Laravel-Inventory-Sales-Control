<?php
namespace App;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = ['name', 'id_category_parent', 'level'];

    public function categoryparent()
    {
        return $this->belongsTo('App\Category','id_category_parent','id');
    }

    public function getCategorieslevels()
    {
        $categories_list = Category::with('categoryparent')->get();

        $list = array();
        //LOOK PARENT 1
        for($i = 0; $i<count($categories_list);$i++ )
        {
            $id = $categories_list[$i]->id;

            if(empty($categories_list[$i]->id_category_parent))
            {
                $list[$id] = "".$categories_list[$i]->name;

                //LOOK PARENT 2
                for( $i2 = 0; $i2 < count($categories_list);$i2++ )
                {
                    $id2 = $categories_list[$i2]->id;

                    if($categories_list[$i2]->id_category_parent == $categories_list[$i]->id)
                    {
                        $list[$id2] = " ___ ".$categories_list[$i2]->name;

                        //LOOK PARENT 3
                        for( $i3 = 0; $i3 < count($categories_list);$i3++ )
                        {
                            $id3 = $categories_list[$i3]->id;

                            if($categories_list[$i3]->id_category_parent == $categories_list[$i2]->id)
                            {
                                $list[$id3] = " ________ ".$categories_list[$i3]->name;                                
                            }
                        }

                    }
                }
            }
        }

        return $list;
    }

}
