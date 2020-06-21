<?php

namespace App\Http\Controllers;

use App\Course;
use Illuminate\Http\Request;


class CourseController extends Controller
{
    public function index()
    {
        $course = Course::get();

        return response()->json($course, 200);
    }

    public function show(Course $course)
    {
        if(is_null($course)) {
            return response()->json(['message' => 'Record not found'], 404);
        }
        return response()->json($course, 200);
    }

    public function store(Request $request)
    {
        $data = [
            'name' => 'required',
            'course_id' => '',
            'credit' => '',
        ];

        $validator = Validator::make($request->all(), $data);
        if($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $course = Course::create($request->all());

        return response()->json($course, 201);
    }

    public function update(Request $request, Course $course)
    {
        if(is_null($course)) {
            return response()->json(['message' => 'Record not found'], 404);
        }
        $course->update($request->all());
        return response()->json($course, 200);
    }

    public function destroy(Request $request, Course $course)
    {
        if(is_null($course)) {
            return response()->json(['message' => 'Record not found'], 404);
        }

        $course->delete();

        return response()->json(null, 204);
    }
}
