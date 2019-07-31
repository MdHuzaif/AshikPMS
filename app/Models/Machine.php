<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Machine extends Model
{
    protected $fillable = ['id','machineName','detail','status','shopName','created_at', 'updated_at'];

}
