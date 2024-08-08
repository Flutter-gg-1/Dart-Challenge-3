void main(List<String> arguments) {
  var uni = University();
  var courseList = uni.courseList;

  print(courseList.first.courseName);

  var newCourse = Course(
      courseName: 'New C',
      courseCode: '123ABC',
      schedule: ["Monday 9:00 AM - 11:00 AM", "Wednesday 9:00 AM - 11:00 AM"]);

  uni.AddNewCourse(newCourse);

  uni.removeCourseByCode('CS101');

  uni.showAllCourses();

  uni.findCourseByName('Algorithms');

  uni.findCourseByCode('CS301');
}

class Course {
  String? courseName;
  String? courseCode;
  List<String>? schedule;
  Course({this.courseName, this.courseCode, this.schedule});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
        courseCode: json['courseCode'],
        courseName: json['courseName'],
        schedule: json['schedule']);
  }
}

class University {
  var courseList = (jsonData['courses'] as List)
      .map((course) => Course.fromJson(course))
      .toList();

  void AddNewCourse(Course course) {
    courseList.add(course);
  }

  void removeCourseByCode(String code) {
    courseList.removeWhere((e) => e.courseCode == code);
  }

  void showAllCourses() {
    for (var c in courseList) {
      print('name: ${c.courseName}');
      print('code: ${c.courseCode}');
      print('schedule: ${c.schedule}');
    }
  }

  void findCourseByName(String name) {
    print(courseList.where((e) => e.courseName == name).first.courseName);
    print(courseList.where((e) => e.courseName == name).first.courseCode);
    print(courseList.where((e) => e.courseName == name).first.schedule);
  }

  void findCourseByCode(String code) {
    print(courseList.where((e) => e.courseCode == code).first.courseName);
    print(courseList.where((e) => e.courseCode == code).first.courseCode);
    print(courseList.where((e) => e.courseCode == code).first.schedule);
  }
}

var jsonData = {
  "courses": [
    {
      "courseName": "Introduction to Programming",
      "courseCode": "CS101",
      "schedule": ["Monday 9:00 AM - 11:00 AM", "Wednesday 9:00 AM - 11:00 AM"]
    },
    {
      "courseName": "Data Structures",
      "courseCode": "CS102",
      "schedule": ["Tuesday 2:00 PM - 4:00 PM", "Thursday 2:00 PM - 4:00 PM"]
    },
    {
      "courseName": "Algorithms",
      "courseCode": "CS201",
      "schedule": ["Monday 1:00 PM - 3:00 PM", "Wednesday 1:00 PM - 3:00 PM"]
    },
    {
      "courseName": "Database Systems",
      "courseCode": "CS301",
      "schedule": ["Friday 10:00 AM - 12:00 PM"]
    }
  ]
};
