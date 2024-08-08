import 'course.dart';
import '../json/data.dart';

class University {
  late List<Course> courses = [];

  University() {
    for (var element in data['courses']) {
      courses.add(Course.formJson(element));
    }
  }

  void addCourse(Course course) {
    courses.add(course);
  }

  void removeCourseByCode(String code) {
    findCourse:
    for (Course course in courses) {
      if (course.code == code) {
        courses.remove(course);
        print("Success");
        break findCourse;
      }
    }
  }

  void searchCourse(String input) {
    for (Course course in courses) {
      if (course.code == input || course.name == input) {
        print("course has been found");
        course.toPrint();
      }
    }
  }

  void listAllcourses() {
    for (Course course in courses) {
      course.toPrint();
    }
  }
}
