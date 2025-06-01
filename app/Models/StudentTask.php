<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StudentTask extends Model
{
    protected $fillable = [
        'user_id',
        'title',
        'description'
    ];

    public function user(){
        return $this->belongsTo(User::class);
    }
}
