import 'data.dart';

void main(List<String> arguments) {
  University u = University.fromJson(data);

  // print(u.toJson());
  // u.searchForCourse('Introduction to Programming');
  u.addNewCourse(courseName: 'courseName', courseCode: 'courseCode', schedule: ['schedule','jkbsajbbd']);
  print(u.toJson());

  print('');

  u.removeCourseByCode('CS101');
  print(u.toJson());
}

class University {
  List<Course> courses;

  University({
    required this.courses,
  });

  factory University.fromJson(Map<String, dynamic> json) {
    return University(
        courses: (json['courses'] as List)
            .map((element) => Course.fromJson(element))
            .toList());
  }

  toJson() {
    return {'courses': courses.map((element) => element.toJson())};
  }

  addNewCourse(
      {required String courseName,
      required String courseCode,
      required List schedule,
      Map<String, dynamic>? json}) {
    courses.add(Course(courseName: courseName, courseCode: courseCode, schedule: schedule));
  }

    removeCourseByCode(String courseCode) {
      for (var element in courses) {
      if (element.courseCode == courseCode) {
        courses.remove(element);
        break;
      }
    }
    }


  displayCourses() {
    for (var element in courses) {
      print(element);
      
    }
  }

  searchForCourse(String courseName) {
    for (var element in courses) {
      if (element.courseName == courseName ||
          element.courseCode == courseName) {
        print(element.toJson());
      }
    }
  }
}

class Course {
  String courseName;
  String courseCode;
  List schedule;

  Course({
    required this.courseName,
    required this.courseCode,
    required this.schedule,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
        courseName: json['courseName'],
        courseCode: json['courseCode'],
        schedule: json['schedule']);
  }

  toJson() {
    return {
      'courseName': courseName,
      'courseCode': courseCode,
      'schedule': schedule
    };
  }

}
