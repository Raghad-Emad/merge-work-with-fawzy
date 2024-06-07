<?php

namespace App\Http\Controllers\Api;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::all();
        return response()->json($categories);
    }

    public function show($id)
    {
        $category = Category::find($id);
        
        if($category != null){
           return response()->json([
             "status" => "success",
             "category" => $category
           ],200);
        }
        else{
            return response()->json([
                "status"  => "Error",
                "message"  => "Category Not Found"
            ],404); 
        }
    }
}
