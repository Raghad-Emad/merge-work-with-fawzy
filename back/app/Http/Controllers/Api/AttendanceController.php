<?php

namespace App\Http\Controllers\Api;
use App\Models\Attendance;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Resources\AttendanceResource;

class AttendanceController extends Controller
{
    public function __construct()
    {
        $this->authorizeResource(Attendance::class);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'user_id' => 'required|numeric|gt:0',
            'course_id' => 'required|numeric|gt:0',
            'date' => 'required|date_format:Y-m-d H:i:s',
            'attendance_status' => 'nullable|numeric'
        ]); 

        if($validator->fails()) {
           return response()->json($validator->errors(),400);
        }
          $attendance = new Attendance();
          $attendance->user_id = $request->user_id;
          $attendance->course_id = $request->course_id;
          $attendance->date = $request->date;
          $attendance->attendance_status = $request->attendance_status;
          $attendance->save();

        return response()->json([
            "status" => 'Success',
            "message" => "Attendance Created Successfully!",
            "attendance" => $attendance
        ],201);
    }


    public function update(Request $request, Attendance $attendance)
    {
        $validator = Validator::make($request->all(), [
            'user_id' => 'required|numeric|gt:0',
            'course_id' => 'required|numeric|gt:0',
            'date' => 'required|date_format:Y-m-d H:i:s',
            'attendance_status' => 'nullable|numeric'
        ]);

        if($validator->fails()) {
           return response()->json($validator->errors(),400);
        }

        $attendance->user_id = $request->user_id;
        $attendance->course_id = $request->course_id;
        $attendance->date = $request->date;
        $attendance->attendance_status = $request->attendance_status;
        $attendance->update();

        return response()->json([
            "status" => 'Success',
            "message" => "Attendance Updated Successfully!",
            "attendance" => $attendance
        ],200);
    }

    public function index()
    {
        $attendances = Attendance::with(['user','course'])->get();
        
        return AttendanceResource::collection($attendances);
    }
}
