<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Student;
use Faker\Generator as Faker;

$factory->define(Student::class, function (Faker $faker) {
    return [

    'name' => $faker->name,
    'class' => $faker->numberBetween(1, 10),
    'student_id' => $faker->uuid,
    'gender' => $faker->name,
    'dob' => $faker->date(),
    'course' => $faker->userName,
    'address' => $faker->address,
    'mobile' => $faker->phoneNumber,
    ];
});
