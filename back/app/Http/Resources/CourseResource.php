<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CourseResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request)
    {
        return [

            'count' => $this->count(),
            'image' => $this->resource['image']['path'],
            'name' => $this->resource['name'],
            'description' => $this->resource['description'],
            'price' => $this->resource['price'],
            'hours' => $this->resource['hours'],
            'category' => $this->resource['category']['name'],
            'objective' => $this->resource['objective']['name'],
        ];
    }
}
