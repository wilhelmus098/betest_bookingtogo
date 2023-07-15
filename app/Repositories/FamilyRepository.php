<?php

namespace App\Repositories;

use App\Repositories\Interfaces\FamilyRepositoryInterface;
use App\Models\Family;

class FamilyRepository implements FamilyRepositoryInterface
{
    public function destroy($customerId)
    {
        $families = Family::where('customer_id', $customerId)->get();
        $families->each->delete();
    }

    public function store($data)
    {
        return Family::create($data);
    }
}