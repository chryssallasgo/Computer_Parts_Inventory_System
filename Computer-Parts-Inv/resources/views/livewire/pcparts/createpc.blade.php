<div>
    <div class="py-12">
        <div class="mx-auto max-w-7xl sm:px-6 lg:px-8">
            <div class="overflow-hidden bg-white shadow-sm dark:bg-gray-800 sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    

                    {{-- Create content --}}

                    <div class="flex flex-col gap-y-4">
                        <div class="flex flex-col gap-y-1">
                            <h1 class="text-xl font-bold">Computer Part Information</h1>
                            <p class="text-sm text-gray-300">Add a computer part here</p>
                        </div>

                        {{-- Create Student Form --}}
                        <form wire:submit.prevent='store'>
                            <div class="grid grid-cols-1 gap-4 md:grid-cols-2">
                                <div>
                                    <label for="pcname" class="block mb-2 text-sm font-medium dark:text-white">Computer Part Name</label>
                                    <input 
                                    type="text" 
                                    id="name" 
                                    wire:model.blur="PCForm.pcpart_name" 
                                    class="block w-full px-4 py-3 text-sm rounded-lg disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 dark:focus:ring-neutral-600 
                                    @error('PCForm.pcpart_name')
                                        text-red-900 focus:ring-red-500 focus:border-red-500 border-red-300
                                    @enderror
                                    ">
                                    @error('PCForm.pcpart_name')
                                        <p class="mt-2 text-sm text-red-500">{{ $message }}</p>
                                    @enderror
                                </div>
                                <div>
                                    <label for="pcpart_price" class="block mb-2 text-sm font-medium dark:text-white">Price</label>
                                    <input 
                                    type="number" 
                                    id="pcpart_price"
                                    wire:model.blur="PCForm.pcpart_price" 
                                    class="block w-full px-4 py-3 text-sm rounded-lg disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500                                     
                                    @error('PCForm.pcpart_price')
                                        text-red-900 focus:ring-red-500 focus:border-red-500 border-red-300
                                    @enderror
                                    ">
                                    @error('PCForm.pcpart_price')
                                        <p class="mt-2 text-sm text-red-500">{{ $message }}</p>
                                    @enderror
                                </div>
                                <div>
                                    <label for="partcategory_id" class="block mb-2 text-sm font-medium dark:text-white">Part Category</label>
                                    <select 
                                    id="partcategory_id" 
                                    wire:model.live="PCForm.partcategory_id"
                                    class="block w-full px-4 py-3 text-sm rounded-lg pe-9 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 dark:focus:ring-neutral-600
                                        @error('PCForm.partcategory_id')
                                            text-red-900 focus:ring-red-500 focus:border-red-500 border-red-300
                                        @enderror
                                    ">
                                        <option value="">Select Part Category</option>
                                        @foreach ($partcategory as $partcategory)
                                            <option value="{{ $partcategory->id }}">{{ $partcategory->name }}</option>
                                        @endforeach
                                    </select>
                                        @error('PCForm.partcategory_id')
                                        <p class="mt-2 text-sm text-red-500">{{ $message }}</p>
                                        @enderror
                                </div>
                                <div>
                                    <label for="manufacturer" class="block mb-2 text-sm font-medium dark:text-white">Manufacturer</label>
                                    <select 
                                    id="manufacturer" 
                                    wire:model.live="PCForm.manufacturer_id"
                                    class="block w-full px-4 py-3 text-sm rounded-lg pe-9 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 dark:focus:ring-neutral-600                                    
                                        @error('PCForm.manufacturer_id')
                                            text-red-900 focus:ring-red-500 focus:border-red-500 border-red-300
                                        @enderror
                                    ">
                                    <option value="">Select Manufacturer</option>
                                        @foreach ($manufacturer as $manufacturer)
                                            <option value="{{ $manufacturer->id }}">{{ $manufacturer->name }}</option>
                                        @endforeach
                                    </select>
                                        @error('PCForm.manufacturer_id')
                                        <p class="mt-2 text-sm text-red-500">{{ $message }}</p>
                                        @enderror
                                </div>
                                
                            </div>
                            <div class="flex justify-end mt-4 gap-x-3">
                                <a href="{{ route('pcparts.indexpc') }}" class="inline-flex items-center px-4 py-3 text-sm font-medium text-gray-100 bg-orange-900 border border-transparent rounded-lg gap-x-2 hover:bg-orange-200 focus:outline-none focus:bg-indigo-200 disabled:opacity-50 disabled:pointer-events-none dark:text-white dark:hover:bg-orange-600 dark:focus:bg-orange-900">
                                    Cancel
                                </a>
                                <button type="submit" class="px-4 py-3 text-sm font-medium text-white bg-orange-600 border border-transparent rounded-lg gap-x-2 hover:bg-orange-700 focus:outline-none focus:bg-orange-700 disabled:opacity-50 disabled:pointer-events-none">
                                    Save
                                </button>
                            </div>
                        </form>
                        {{-- End of Create Student Form --}}
                    </div>

                    {{-- End of Create content --}}

                </div>
            </div>
        </div>
    </div>
</div>

