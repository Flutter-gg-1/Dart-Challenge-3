import 'package:challenge3/models/course.dart';

class University {
  List<Course> courses;

  University({required this.courses});

  factory University.fromJson(Map<String,dynamic> json) {
    List<Course> coursesList = [];
    for(var course in json['courses']) {
      coursesList.add(Course.fromJson(course));
    }
    return University(courses: coursesList);
  }

  Map<String,dynamic> toJson() {
    return {
      'courses' : courses.map((course)=>course.toJson()).toList()
    };
  }

  addCourse({required Course course}) {
    courses.add(course);
    print("Course ${course.courseName} Added !!");
  }

  removeCourseByCode({required String courseCode}) {
    courses.removeWhere((course)=>course.courseCode == courseCode);
    print("Course $courseCode removed !!");
  }

  listAllCourses() {
    for(var course in courses) {
      print("${course.courseName} schedule is ${course.schedule}");
    }
  }

  searchCourses({required String query}) {
    for(var course in courses) {
      if(course.courseName.toLowerCase().contains(query.toLowerCase()) || course.courseCode == query) {
        print("Course : ${course.courseName} || Code : ${course.courseCode}");
      }
    }
  }
}