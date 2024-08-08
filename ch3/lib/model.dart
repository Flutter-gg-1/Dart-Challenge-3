class University {
  List<Courses> courses;

  University({required this.courses});

  factory University.fromJson(Map<String, dynamic> json) {
    return University(
      courses:
          (json['courses'] as List).map((e) => Courses.fromJson(e)).toList(),
    );
  }
}

class Courses {
  String courseName;
  String courseCode;
  List<String> schedule;

  Courses(
      {required this.courseName,
      required this.courseCode,
      required this.schedule});

  factory Courses.fromJson(Map<String, dynamic> json) {
    return Courses(
      courseName: json['courseName'],
      courseCode: json['courseCode'],
      schedule: json['schedule'],
      // schedule:
      //     (json['schedule'] as List).map((e) => Schedule.fromJson(e)).toList(),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'courseName': courseName,
      'courseCode': courseCode,
      // 'schedule': schedule.map((e) => e.toJson()).toList(),
      'schedule': schedule,
    };
  }
}

class Schedule {
  String day;
  String time;

  Schedule({required this.day, required this.time});

  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(
      day: json['day'],
      time: json['time'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'day': day,
      'time': time,
    };
  }
}
