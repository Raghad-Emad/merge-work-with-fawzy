<?php

namespace App\Http\Controllers\Api;
use App\Models\Blog;
use App\Http\Resources\BlogResource;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function index()
    {
        $blogs = Blog::with('image')->get();
        return BlogResource::collection($blogs);
    }
}
