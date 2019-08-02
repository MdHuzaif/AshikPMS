<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Machine extends Model
{
    protected $fillable = ['id','shopName','machineName','status','issueDate','description','created_at', 'updated_at'];

}
