<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    // Rellenable
    protected $fillable = [
        'title',
        'location',
        'description',
        'url',
        'is_published'
    ];
}
