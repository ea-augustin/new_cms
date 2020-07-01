<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
       /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $guarded = [
        
    ];
    //Relationship:Each Post has a User
   public function user(){
    return $this->belongsTo(User::class);
   }

   //mutate data before it gets to the database
   //public function setPostImageAttribute($value){
    //$this->attributes['post_image'] ->asset($value);
   //}


  //accessor
  public function getPostImageAttribute($value){
    return asset('storage/'.$value);
  }

}
