<?php

namespace App\Http\Controllers\Api;
use App\Models\Course;
use App\Http\Resources\CourseResource;
use App\Http\Resources\CourseDetailsResource;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    public function index()
    {
        $courses = Course::with(['category','objective','image'])->get();

        return CourseResource::collection($courses);
    }


    public function show($id)
    {
        $course = Course::with('roadmaps')->find($id);
        if($course != null){
           return new CourseDetailsResource($course);
        }
        else{
            return response()->json([
             "message" => "Course Not Found"
            ],404);
        }

    }
}
