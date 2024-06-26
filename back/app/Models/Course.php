<?php

namespace App\Models;
use Spatie\Searchable\Searchable;
use Spatie\Searchable\SearchResult;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model implements Searchable
{
    protected $fillable = ['name','description','price','hours','category_id','objective_id'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function image()
    {
        return $this->morphOne(Image::class,'imageable');
    }

    public function objective()
    {
        return $this->belongsTo(Objective::class);
    }

    public function quizzes()
    {
        return $this->hasMany(Quiz::class);
    }

    public function assignments()
    {
        return $this->hasMany(Assignment::class);
    }

    public function portfolios()
    {
        return $this->hasMany(Portfolio::class);
    }

    public function recordings()
    {
        return $this->hasMany(Recording::class);
    }

    public function superskills()
    {
        return $this->hasMany(Super_skill::class);
    }

    public function schedules()
    {
        return $this->hasMany(Schedule::class);
    }

    public function roadmaps()
    {
        return $this->belongsToMany(Roadmap::class);
    }

    public function attendances()
    {
        return $this->hasMany(Attendance::class);
    }

    public function sessions()
    {
        return $this->hasMany(Session::class);
    }

    
    public function materials()
    {
        return $this->hasMany(Material::class);
    }

    public function users()
    {
        return $this->belongsToMany(User::class,'course_user')->withPivot('date');
    }

    public function studentProgress()
    {
        return $this->hasMany(StudentProgress::class);
    }

    public function getSearchResult(): SearchResult
    {
        $url = route('courses.show', $this->id);

        return new SearchResult(
            $this,
            $this->name,
            $url
        );
    }


    use HasFactory;
}
