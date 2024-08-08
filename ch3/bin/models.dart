
class Course {
  final String courseName;
  final String courseCode;
  final List<String> schedule;

  Course({
    required this.courseName,
    required this.courseCode,
    required this.schedule,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      courseName: json["courseName"] as String,
      courseCode: json["courseCode"] as String,
      schedule: List<String>.from(json["schedule"] as List<dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "courseName": courseName,
      "courseCode": courseCode,
      "schedule": schedule,
    };
  }
}

class University {
  List<Course> courses;

  University({required this.courses});

  factory University.fromJson(Map<String, dynamic> json) {
    return University(
      courses: (json["courses"] as List<dynamic>)
          .map((c) => Course.fromJson(c as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data["courses"] = courses.map((e) => e.toJson()).toList();

    return data;
  }

  void addCourse(Course course) {
    courses.add(course);
  }

  void removeCourseByCode(String courseCode) {
    courses.removeWhere((course) => course.courseCode == courseCode);
  }

  List<Map<String, dynamic>> listAllCourses() {
    return courses.map((course) => course.toJson()).toList();
  }

  List<Map<String, dynamic>> searchCourses(String query) {
    return courses
        .where((course) =>
            course.courseName.toLowerCase().contains(query.toLowerCase()) ||
            course.courseCode.toLowerCase().contains(query.toLowerCase()))
        .map((course) => course.toJson())
        .toList();
  }
}
