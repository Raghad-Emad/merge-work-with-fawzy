<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Category::create(["name"=>"Web Development"]);
        Category::create(["name"=>"Design"]);
        Category::create(["name"=>"Data Science"]);
        Category::create(["name"=>"Digital Marketing"]);

    }
}
