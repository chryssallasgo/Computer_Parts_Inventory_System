<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\PartCategory;
use App\Models\Manufacturer;
use App\Models\PCPart;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Eloquent\Factories\Sequence;



class PartCategorySeeder extends Seeder
{
    public function run(): void
    {
        $categories = ['GPU', 'CPU', 'MOBO', 'RAM', 'SSD', 'HDD', 'PSU']; 
        foreach ($categories as $category) 
        { 
            PartCategory::create(['name' => $category]);
        }     
    }
}
