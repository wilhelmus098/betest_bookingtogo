<?php
namespace App\Repositories\Interfaces;

use App\Models\Country;

Interface CountryRepositoryInterface {
    
    /**
     * Get All Country Data
     * 
     * @return Country
     */
    public function all();
}