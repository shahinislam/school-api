<?php

namespace App\Http\Controllers;

use App\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class StudentController extends Controller
{
    public function index()
    {
        $students = Student::get();

        return response()->json($students, 200);
    }

    public function show(Student $student)
    {
        if(is_null($student)) {
            return response()->json(['message' => 'Record not found'], 404);
        }
        return response()->json($student, 200);
    }

    public function store(Request $request)
    {
        $data = [
            'name' => 'required',
            'class' => '',
            'student_id' => '',
            'gender' => '',
            'dob' => '',
            'course' => '',
            'address' => '',
            'mobile' => '',
        ];

        $validator = Validator::make($request->all(), $data);
        if($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $student = Student::create($request->all());

        return response()->json($student, 201);
    }

    public function update(Request $request, Student $student)
    {
        if(is_null($student)) {
            return response()->json(['message' => 'Record not found'], 404);
        }
        $student->update($request->all());
        return response()->json($student, 200);
    }

    public function destroy(Request $request, Student $student)
    {
        if(is_null($student)) {
            return response()->json(['message' => 'Record not found'], 404);
        }

        $student->delete();

        return response()->json(null, 204);
    }


}

