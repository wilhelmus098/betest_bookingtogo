<?php
namespace App\Repositories\Interfaces;

use App\Models\Family;

Interface FamilyRepositoryInterface {
    
    /**
     * Delete all family by customer ID
     * 
     * @param int $customerId
     * @return Family
     */
    public function destroy($customerId);

    /**
     * Store new family data
     * 
     * @param array<mixed> $data
     * @return Family
     */
    public function store($data);
}