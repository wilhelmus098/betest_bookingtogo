<?php
namespace App\Repositories\Interfaces;

Interface CustomerRepositoryInterface {
    
    public function all($perPage, $page);
    public function store($data);
    public function find($id);
    public function update($data, $id);
    public function destroy($id);
}