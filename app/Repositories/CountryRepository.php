<?php

namespace App\Repositories;

use App\Repositories\Interfaces\CountryRepositoryInterface;
use App\Models\Country;

class CountryRepository implements CountryRepositoryInterface
{

    /**
     * Get All Country Data
     * 
     * @return Country
     */
    public function all()
    {
        return Country::all();
    }
}