<?php

namespace App\Http\Controllers\Api;
use App\Models\StudentProgress;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Resources\StudentProgressResource;
use App\Http\Resources\StudentProgressDetailsResource;

class StudentProgressController extends Controller
{
    public function __construct()
    {
        $this->authorizeResource(StudentProgress::class);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'rank' => 'required|numeric',
            'total_points' => 'required|numeric',
            'points_earned' => 'required|numeric',
            'date' => 'required|date_format:Y-m-d H:i:s',
            'user_id' => 'required|numeric|gt:0',
            'course_id' => 'required|numeric|gt:0',
            'skill_id' => 'required|numeric|gt:0',
        ]); 

        if($validator->fails()) {
           return response()->json($validator->errors(),400);
        }
          $student_progress = new StudentProgress();
          $student_progress->rank = $request->rank;
          $student_progress->total_points = $request->total_points;
          $student_progress->points_earned = $request->points_earned;
          $student_progress->date = $request->date;
          $student_progress->user_id = $request->user_id;
          $student_progress->course_id = $request->course_id;
          $student_progress->skill_id = $request->skill_id;
          $student_progress->save();

        return response()->json([
            "status" => 'Success',
            "message" => "Progress Created Successfully!",
            "progress" => $student_progress
        ],201);
    }

    public function update(Request $request,StudentProgress $student_progress)
    {
        $validator = Validator::make($request->all(), [
            'rank' => 'required|numeric',
            'total_points' => 'required|numeric',
            'points_earned' => 'required|numeric',
            'date' => 'required|date_format:Y-m-d H:i:s',
            'user_id' => 'required|numeric|gt:0',
            'course_id' => 'required|numeric|gt:0',
            'skill_id' => 'required|numeric|gt:0',
        ]); 

        if($validator->fails()) {
           return response()->json($validator->errors(),400);
        }

          $student_progress->rank = $request->rank;
          $student_progress->total_points = $request->total_points;
          $student_progress->points_earned = $request->points_earned;
          $student_progress->date = $request->date;
          $student_progress->user_id = $request->user_id;
          $student_progress->course_id = $request->course_id;
          $student_progress->skill_id = $request->skill_id;
          $student_progress->update();

        return response()->json([
            "status" => 'Success',
            "message" => "Progress Updated Successfully!",
            "progress" => $student_progress
        ],200);
    }

    public function index()
    {
        $student_progress = StudentProgress::with(['user','course','skill'])->get();
        return StudentProgressResource::collection($student_progress);
    } 

    public function show(StudentProgress $student_progress)
    {
        if($student_progress != null){
            return new StudentProgressDetailsResource($student_progress);
        }
        else{
            return response()->json([
                "status"  => "error",
                "message"  => "Progress not found"  
             ],404);
        }
    }
}
