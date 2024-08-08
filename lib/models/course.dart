class Course {
  final String courseName;
  final String courseCode;
  final List<String> schedule;

  Course(
      {required this.courseCode,
      required this.courseName,
      required this.schedule});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
        courseCode: json['courseCode'],
        courseName: json['courseName'],
        schedule: json['schedule']);
  }

  Map<String,dynamic> toJson() {
    return {
      "courseName" : courseName,
      'courseCode' : courseCode,
      'schedule' : schedule
    };
  }
}
