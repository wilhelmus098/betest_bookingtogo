<?php
namespace App\Repositories\Interfaces;

use App\Models\Customer;

Interface CustomerRepositoryInterface {

    /**
     * Get all customer
     * 
     * @param int $perPage
     * @param int $page
     * @return Customer
     */
    public function all($perPage, $page);

    /**
     * Save new customer
     * 
     * @param array<mixed> $data
     * @return Customer
     */
    public function store($data);

    /**
     * Find customer by ID
     * 
     * @param int $id
     * @return Customer
     */
    public function find($id);

    /**
     * Update customer data
     * 
     * @param array<mixed> $data
     * @param int $id
     * @return Customer
     */
    public function update($data, $id);

    /**
     * Delete customer by ID
     * 
     * @param int $id
     * @return Customer
     */
    public function destroy($id);
}