<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\PCPart;
use App\Models\PartCategory;
use App\Models\Manufacturer;

class PCPartSeeder extends Seeder
{
    public function run(): void
    {
        // Ensure that PartCategory and Manufacturer data is already seeded
        $partcategory = PartCategory::all();
        $manufacturers = Manufacturer::all();

        // Use the factory to create PCPart instances
        PCPart::factory()
            ->count(50) // Adjust the count as needed
            ->create()
            ->each(function ($pcpart) use ($partcategory, $manufacturers) {
                // Assign random category and manufacturer
                $partcategory = $partcategory->firstWhere('name', $pcpart->partcategory->name);
                $pcpart->partcategory_id = $partcategory->id;

                $pcpart->manufacturer_id = $manufacturers->random()->id;
                $pcpart->save();
            });
    }
}
