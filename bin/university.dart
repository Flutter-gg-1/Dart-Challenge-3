import 'course.dart';

class University {
  List<Course> courses = [];

  University({required this.courses});

  factory University.fromJson(Map<String, dynamic> json) {
    return University(
        courses: List<Course>.from(
            json['courses'].map((course) => Course.fromJson(course))));
  }

  void addCourse(Course course) {
    courses.add(course);
  }

  void removeCourseByCode(String courseCode) {
    courses.removeWhere((course) => course.courseCode == courseCode);
  }

  List<Course> listAllCourses() {
    return courses;
  }

  List<Course> searchCourses(String q) {
    return courses.where((course) {
      return course.courseName!.contains(q) || course.courseCode!.contains(q);
    }).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'courses': courses.map((course) => course.toJson()).toList(),
    };
  }
}
