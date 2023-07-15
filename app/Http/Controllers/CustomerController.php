<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\Interfaces\CustomerRepositoryInterface;
use App\Repositories\Interfaces\FamilyRepositoryInterface;
use App\Repositories\Interfaces\CountryRepositoryInterface;

class CustomerController extends Controller
{

    private $customerRepository;
    private $familyRepository;
    private $countryRepository;

    public function __construct(
        CustomerRepositoryInterface $customerRepository,
        FamilyRepositoryInterface $familyRepository,
        CountryRepositoryInterface $countryRepository
    ) {
        $this->customerRepository = $customerRepository;
        $this->familyRepository = $familyRepository;
        $this->countryRepository = $countryRepository;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $page = $request->input('page')??1;
        $customers =  $this->customerRepository->all(1, $page);

        return view('customers.index', compact('customers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $customer =  $this->customerRepository->find($id);
        $countries = $this->countryRepository->all();
        // $families = $this->familyRepository->all();
        return view('customers.edit', compact('customer', 'countries'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $input = $request->all();

        $request->validate([
            'name' => 'required|string|max:50',
            'dob' => 'required|date',
            'phone' => 'required|string|max:20',
            'email' => 'required|string|max:50',
        ]);
        $this->customerRepository->update($input, $id);

        $this->familyRepository->destroy($id);
        if(isset($input['family'])){
            $request->validate([
                'family.*.relation' => 'required|string|max:50',
                'family.*.dob' => 'required|date',
                'family.*.name' => 'required|string|max:50',
            ]);

            foreach($input['family'] as $data) {
                $data['customer_id'] = $id;
                $this->familyRepository->store($data);
            }
        }

        return redirect()->route('customers.index')->with('message', 'Customer Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
