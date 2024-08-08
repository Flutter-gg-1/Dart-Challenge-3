import 'data.dart';

void main(List<String> arguments) {
  University a = University.fromJson(coursesData);
  a.addCourses(Courses(courseName: "courseName", courseCode: "courseCode"));
  a.removeCourse("courseCode");
  // a.listAllCourses();
  a.searchCourses("CS102");
}

class University {
  List<Courses> courses;
  University({required this.courses});
  factory University.fromJson(Map<String, dynamic> json) {
    return University(
        courses: List.from(json["courses"]).map((element) {
      return Courses.fromJson(element);
    }).toList());
  }
  Map<String, dynamic>? toJson() {
    Map<String, dynamic> map = {};
    for (Courses element in courses) {
      map = {"courses": element.toJson()};
    }
    return map;
  }

  addCourses(Courses course) {
    courses.add(course);
  }

  removeCourse(String code) {
    Courses? value;
    for (Courses element in courses) {
      if (element.courseCode == code) {
        value = element;
      }
    }
    courses.remove(value);
  }

  listAllCourses() {
    courses.forEach((element) {
      print(element.toJson());
    });
  }

  searchCourses(String code) {
    courses.forEach((element) {
      if (element.courseCode == code) {
        print(element.toJson());
      }
    });
  }
}

class Courses {
  String? courseName;
  String? courseCode;
  List? schedule;

  Courses({required this.courseName, required this.courseCode, this.schedule});

  factory Courses.fromJson(Map<String, dynamic> json) {
    return Courses(
        courseName: json["courseName"],
        courseCode: json["courseCode"],
        schedule: json["schedule"]);
  }
  toJson() {
    return {
      "courseName": courseName,
      "courseCode": courseCode,
      "schedule": schedule
    };
  }
}
