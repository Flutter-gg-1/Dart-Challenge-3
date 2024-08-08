class Course {
  String? courseName;
  String? courseCode;
  List<String>? schedule;

  Course({this.courseName, this.courseCode, this.schedule});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      courseName: json['courseName'],
      courseCode: json['courseCode'],
      schedule: List<String>.from(json['schedule']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'courseName': courseName,
      'courseCode': courseCode,
      'schedule': schedule,
    };
  }
}
