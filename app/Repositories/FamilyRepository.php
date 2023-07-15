<?php

namespace App\Repositories;

use App\Repositories\Interfaces\FamilyRepositoryInterface;
use App\Models\Family;

class FamilyRepository implements FamilyRepositoryInterface
{
    /**
     * Delete all family by customer ID
     * 
     * @param int $customerId
     * @return Family
     */
    public function destroy($customerId)
    {
        $families = Family::where('customer_id', $customerId)->get();
        $families->each->delete();
    }

    /**
     * Store new family data
     * 
     * @param array<mixed> $data
     * @return Family
     */
    public function store($data)
    {
        return Family::create($data);
    }
}