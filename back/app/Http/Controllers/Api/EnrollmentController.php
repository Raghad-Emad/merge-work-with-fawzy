<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use App\Models\Course;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EnrollmentController extends Controller
{
   public function enroll(Request $request)
   {
      $course = Course::find($request->course_id);
      $user = User::find($request->user_id);
    
      $user->courses()->attach($course,[
        'date' => $request->date,
     ]);

       return response()->json([
        "message" => "Enrollment Done Successfully"
     ],201);
   }
}
