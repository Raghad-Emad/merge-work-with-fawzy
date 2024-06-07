<?php

namespace App\Http\Controllers\Admin;

use App\Models\Category;
use App\Models\Course;
use App\Models\User;
use App\Models\Blog;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Spatie\Searchable\Search;

class HomeController extends Controller
{
  public function index()
  {

    //Fetch The Number Of Courses Avaliable//
    $courses = Course::count();

    //Fetch The Latest Of Users in Our System//
    $blogs = Blog::count();

    //Fetch The Number Of Categories//
    $categories = Category::count();

    //Fetch The Number Of Enrollments//
    $enrollments = User::with('courses')->count();

    $coursesThisMonth = Course::with(['category', 'objective', 'image'])->whereMonth('created_at', 5)->get();

    return view('home', compact('courses', 'blogs', 'categories', 'enrollments', 'coursesThisMonth'));
  }

  public function search(Request $request)
  {
    $query = $request->input('query');

    $searchResults = (new Search())
      ->registerModel(Course::class, 'name')
      ->search($query);
    return view('search', compact('searchResults'));
  }
}
