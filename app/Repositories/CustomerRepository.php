<?php

namespace App\Repositories;

use App\Repositories\Interfaces\CustomerRepositoryInterface;
use App\Models\Customer;

class CustomerRepository implements CustomerRepositoryInterface
{
    public function all($perPage, $page)
    {
        return Customer::paginate($perPage, ['*'], 'page', $page);
    }

    public function store($data)
    {
        return Customer::create($data);
    }

    public function find($id)
    {
        return Customer::find($id);
    }

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

    public function destroy($id)
    {
        return Customer::all()->paginate(10);
    }
}