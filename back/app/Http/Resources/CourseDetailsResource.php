<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CourseDetailsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'image'  =>  $this->image->path,
            'name' => $this->name,
            'description' => $this->description,
            'price' => $this->price,
            'hours' => $this->hours,
            'category' => $this->category->name,
            'objective' => $this->objective->name,
            'roadmaps' => $this->roadmaps
        ]; 
    }
}
