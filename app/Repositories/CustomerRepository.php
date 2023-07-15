<?php

namespace App\Repositories;

use App\Repositories\Interfaces\CustomerRepositoryInterface;
use App\Models\Customer;

class CustomerRepository implements CustomerRepositoryInterface
{
    /**
     * Get all customer
     * 
     * @param int $perPage
     * @param int $page
     * @return Customer
     */
    public function all($perPage, $page)
    {
        return Customer::paginate($perPage, ['*'], 'page', $page);
    }

    /**
     * Save new customer
     * 
     * @param array<mixed> $data
     * @return Customer
     */
    public function store($data)
    {
        return Customer::create($data);
    }

    /**
     * Find customer by ID
     * 
     * @param int $id
     * @return Customer
     */
    public function find($id)
    {
        return Customer::find($id);
    }

    /**
     * Update customer data
     * 
     * @param array<mixed> $data
     * @param int $id
     * @return Customer
     */
    public function update($data, $id)
    {
        $customer = Customer::where('id', $id)->first();
        $customer->country_id = $data['country'];
        $customer->name = $data['name'];
        $customer->dob = $data['dob'];
        $customer->phone = $data['phone'];
        $customer->email = $data['email'];
        $customer->save();
    }

    /**
     * Delete customer by ID
     * 
     * @param int $id
     * @return Customer
     */
    public function destroy($id)
    {
        $customer = Customer::find($id);
        $customer->delete();
    }
}