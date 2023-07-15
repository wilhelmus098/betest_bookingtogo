<?php
namespace App\Repositories\Interfaces;

Interface FamilyRepositoryInterface {
    
    public function destroy($customerId);
    public function store($data);
}