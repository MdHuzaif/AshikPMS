<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    protected $fillable = [ 'partyName','orderNo', 'totalamount', 'paidamount', 'dueamount', 'purchaseDiscount','partyOrder','created_by', 'modified_by', 'purchase_date', 'created_at', 'updated_at'];
}
