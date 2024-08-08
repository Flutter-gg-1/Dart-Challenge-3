import '../bin/data.dart';

void main(List<String> arguments) {
  List<Course> coursesList = [];

  for (var courseData in coursees['courses']) {
    var course = Course.fromJson(courseData);
    coursesList.add(course);
  }
  Course cour = Course(
      courseName: "muhannad", courseCode: "althaher", schedule: ["monday"]);
  coursesList.add(cour);
  // coursesList.removeAt();
  String query = "CS301";
  for (var course in coursesList) {
    if (query == course.courseCode) {
      print(course.toJson());
    }

    print(course.toJson());
  }
}

class Course {
  final String? courseName;
  final String? courseCode;
  final List<String>? schedule;

  Course(
      {required this.courseName,
      required this.courseCode,
      required this.schedule});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
        courseName: json['courseName'],
        courseCode: json['courseCode'],
        schedule: List<String>.from(json['schedule']));
  }

  Map<String, dynamic> toJson() {
    return {
      'courseName': courseName,
      'courseCode': courseCode,
      'schedule': schedule
    };
  }
}

class University {
  void addNewCourse(Course course) {
    List<Course> coursesList = [];

    for (var courseData in coursees['courses']) {
      var course = Course.fromJson(courseData);
      coursesList.add(course);
    }
  }

  void removeCourse(String courseCode) {
    Course name = Course.fromJson(coursees);
    List a = [];
    a.add(name);

    if (courseCode == a) {
      a.remove(a);
    }
  }

  void listAllCourses() {}

  void searchForCourse() {}
}
