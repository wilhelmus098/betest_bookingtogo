<?php

namespace App\Repositories;

use App\Repositories\Interfaces\CustomerRepositoryInterface;
use App\Models\Customer;

class CustomerRepository implements CustomerRepositoryInterface
{
    public function all()
    {
        return Customer::all();
    }

    public function store($data)
    {
        return Customer::all()->paginate(10);
    }

    public function find($id)
    {
        return Customer::all()->paginate(10);
    }

    public function update($data, $id)
    {
        return Customer::all()->paginate(10);
    }

    public function destroy($id)
    {
        return Customer::all()->paginate(10);
    }
}