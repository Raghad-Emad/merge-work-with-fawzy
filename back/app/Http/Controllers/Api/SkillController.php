<?php

namespace App\Http\Controllers\Api;
use App\Models\Skill;
use App\Http\Resources\SkillResource;
use App\Http\Resources\SkillDetailsResource;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class SkillController extends Controller
{
    public function index()
    {
        $skills = Skill::with('superSkill')->get();
        return SkillResource::collection($skills);
    }

    public function show($id)
    {
        $skill = Skill::find($id);
        if($skill != null){
            return new SkillDetailsResource($skill);
        }
        else{
            return response()->json([
                "status"  => "error",
                "message"  => "Skill not found"  
             ],404);
        }
    }
}
