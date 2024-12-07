<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Manufacturer;
use App\Models\PartCategory;

class ManufacturerSeeder extends Seeder
{
    public function run(): void
    {
        $partcategory = PartCategory::all();

        $manufacturers = [
            ['name' => 'Intel', 'partcategory_id' => $partcategory->where('name', 'CPU')->first()->id],
            ['name' => 'AMD', 'partcategory_id' => $partcategory->where('name', 'CPU', 'GPU')->first()->id],
            ['name' => 'Nvidia', 'partcategory_id' => $partcategory->where('name', 'GPU')->first()->id],
            ['name' => 'Gigabyte', 'partcategory_id' => $partcategory->where('name', 'MOBO')->first()->id], 
            ['name' => 'MSI', 'partcategory_id' => $partcategory->where('name', 'MOBO')->first()->id], 
            ['name' => 'Kingston', 'partcategory_id' => $partcategory->where('name', 'RAM')->first()->id], 
            ['name' => 'Corsair', 'partcategory_id' => $partcategory->where('name', 'RAM')->first()->id], 
            ['name' => 'Asus', 'partcategory_id' => $partcategory->where('name', 'MOBO')->first()->id], 
            ['name' => 'Samsung', 'partcategory_id' => $partcategory->where('name', 'SSD')->first()->id], 
            ['name' => 'Western Digital', 'partcategory_id' => $partcategory->where('name', 'HDD')->first()->id],
            ['name' => 'Cooler Master', 'partcategory_id' => $partcategory->where('name', 'PSU')->first()->id],
        ];

        foreach ($manufacturers as $manufacturer) {
            Manufacturer::create($manufacturer);
        }
    }
}
