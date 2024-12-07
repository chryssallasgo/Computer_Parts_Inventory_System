<?php

namespace Database\Factories;
use App\Models\PCPart;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Faker\CustomFakerProvider;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\PCParts>
 */
class PCPartFactory extends Factory
{
    protected $model = PCPart::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        $this->faker->addProvider(new CustomFakerProvider($this->faker));

        $pcpart_name = $this->faker->pcpart_name(); 
        $partcategory = $this->faker->partcategory($pcpart_name);

        $partCategoryModel = \App\Models\PartCategory::firstOrCreate(['name' => $partcategory]);
        
        return [
            
            'pcpart_name' => $pcpart_name,
            'pcpart_price' => $this->faker->randomFloat(2, 8000, 11000),
            'partcategory_id' => $partCategoryModel->id,
            'manufacturer_id' => \App\Models\Manufacturer::factory(),
            
        ];
    }
}
