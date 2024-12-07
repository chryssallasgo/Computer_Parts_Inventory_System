<?php

namespace App\Livewire\PCParts;
use App\Livewire\Forms\PCForm;
use App\Models\Manufacturer;
use App\Models\PartCategory;
use App\Models\PCPart;

use Livewire\Component;

class EditPC extends Component
{
    public $id;
    public PCPart $pcpart;
    public $pcform = [];
    public $manufacturers = [];
    public $partcategory = [];
    public $pcpart_name;
    public $pcpart_price;
    public $partcategory_id;
    public $manufacturer_id;

    public function mount($id = null)
    {
        //dd($this->pcform);
        $this->id = $id;
        $pcpart = PCPart::findOrFail($this->id);

        $this->pcform = $pcpart->toArray();
        $this->pcpart_name = $this->pcform['pcpart_name'];
        $this->pcpart_price = $this->pcform['pcpart_price'];
        $this->partcategory_id = $this->pcform['partcategory_id'];
        $this->manufacturer_id = $this->pcform['manufacturer_id'];

        $this->partcategory = PartCategory::all();
        $this->manufacturers = Manufacturer::all();
    }

    public function render()
    {
        return view('livewire.pcparts.editpc', [
            'partcategory' => $this->partcategory,
            'manufacturers' => $this->manufacturers,
        ]);
    }

    public function update()
    {
        $this->validate([
            'pcpart_name' => 'required|string|max:255',
            'pcpart_price' => 'required|numeric',
            'partcategory_id' => 'required|exists:partcategory,id',
            'manufacturer_id' => 'required|exists:manufacturer,id',
        ]);

        // Update the item based on the form data
        $pcpart = PCPart::findOrFail($this->id);
        $pcpart->update([
            'pcpart_name' => $this->pcpart_name,
            'pcpart_price' => $this->pcpart_price,
            'partcategory_id' => $this->partcategory_id,
            'manufacturer_id' => $this->manufacturer_id,
        ]);
        $pcpart->update($this->pcform);
    
        // Provide success message
        flash()->success('Computer Part updated successfully');
    
        // Redirect to the index page
        return $this->redirect(IndexPC::class, navigate: true);
    }   
}