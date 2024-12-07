<?php

namespace App\Livewire\PCParts;

use App\Livewire\Forms\PCForm;
use App\Models\PartCategory;
use App\Models\Manufacturer;
use App\Models\PCPart;
use Livewire\Component;

class CreatePC extends Component
{

    public PCForm $PCForm;
    //public Form $form;
 
    public $partcategory;
    public $manufacturer = [];

    protected function rules()
    {
        return $this->PCForm->rules();    
    }

    public function render()
    {
        return view('livewire.pcparts.createpc',[
            'partcategory' => PartCategory::all()
        ]);
    }
    public function mount() 
    { 
        $this->manufacturer = Manufacturer::all(); 
        $this->partcategory = PartCategory::all();
    }

    public function updated($property)
    {
        if ($property === 'PCForm.partcategory_id') {
            $this->manufacturer = Manufacturer::where('partcategory_id', $this->PCForm->partcategory_id)->get();
        }

        // if($property === 'form.section_id'){
        //     dd($this->form->section_id);
        // }
    }

    public function store()
    {
        $validated = $this->PCForm->validate();
        
        PCPart::create($validated);
        
       flash()->success('Computer part added successfully');
        
        return redirect()->route('pcparts.indexpc');
    }

}
