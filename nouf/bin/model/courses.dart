class Course {
  String courseName;
  String courseCode;
  List<String> schedule;

  Course({
    required this.courseName,
    required this.courseCode,
    required this.schedule,
  });

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

class University {

  
  List<Course> courses = [];
  University({required this.courses});

  
factory University.fromJson(Map<String, dynamic> json) {
    var coursesJson = json['courses'] as List;
    List<Course> coursesList = coursesJson.map((courseJson) => Course.fromJson(courseJson)).toList();
    return University(courses: coursesList);

}
  Map<String, dynamic> toJson() {
    return {
      'courses': courses.map((course) => course.toJson()).toList(),
    };
  }

  void addCourse(Course course) {
    courses.add(course);
  }
  

 
  void removeCourse(String courseCode) {
    courses.removeWhere((course) => course.courseCode == courseCode);
  }

  void listCourses() {
    for (var course in courses) {
      print('Course Name: ${course.courseName}');
      print('Course Code: ${course.courseCode}');
      print('Schedule: ${course.schedule}');
      print('');
    }
  }

  


 
  List<Course> searchCourses(String key) {
    return courses.where((course) =>
        course.courseName.contains(key) || course.courseCode.contains(key)).toList();
  }

  

}
