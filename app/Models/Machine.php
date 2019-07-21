<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Machine extends Model
{
    protected $fillable = ['shopname','total','run','damage', 'created_at', 'updated_at'];

}
