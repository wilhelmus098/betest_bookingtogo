<?php

namespace App\Repositories;

use App\Repositories\Interfaces\CountryRepositoryInterface;
use App\Models\Country;

class CountryRepository implements CountryRepositoryInterface
{
    public function all()
    {
        return Country::all();
    }
}