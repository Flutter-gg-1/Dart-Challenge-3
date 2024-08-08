import 'dart:collection';

import 'course.dart';

class University {
  List<Course> courses;

  University({required this.courses});

  factory University.fromJson(Map<String, dynamic> json) {
    return University(
        courses: List.from(json["courses"]).map((element) {
      return Course.fromJson(element);
    }).toList());
  }

  Map<String, dynamic> toJson() {
    return {
      "courses": courses.map((element) {
        return element.toJson();
      })
    };
  }

  addCourse(Course course) {
    courses.add(course);
  }

  deleteCourse(String code) {
    for (var course in courses) {
      if (course.courseCode == code) {
        courses.remove(course);
        return;
      }
    }
    print("Please enter a valid course code");
  }

  getAllCourses() {
    for (var course in courses) {
      print("-" * 30);
      print("course name: ${course.courseName}");
      print("course code: ${course.courseCode}");
      print("schedule: ${course.schedule}");
    }
    print("-" * 30);
  }

  getCourseByCode(String code) {
    for (var course in courses) {
      if (course.courseCode == code) {
        print("-" * 30);
        print("course name: ${course.courseName}");
        print("course code: ${course.courseCode}");
        print("schedule: ${course.schedule}");

        print("-" * 30);
        return;
      }
    }
    print("course not found");
  }
}
