import 'dart:async';

class Course {
  final String name;
  final String code;
  final List<String> schedule;

  Course({required this.name, required this.code, required this.schedule});

  factory Course.formJson(Map<String, dynamic> json) {
    return Course(
        name: json['courseName'],
        code: json['courseCode'],
        schedule: json['schedule']);
  }

  void toPrint() {
    print("Course name:$name");
    print("Course code:$code");
    print("Course schedule:$schedule");
  }
}
