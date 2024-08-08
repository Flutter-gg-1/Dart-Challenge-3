import 'package:ch3/model.dart';

Map<String, dynamic> University = {
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

void main() {
  // List<Courses> courses =
  //     (University['courses'] as List).map((e) => Courses.fromJson(e)).toList();
  // print(courses.courseName());

  List<Courses> courses =
      (University['courses'] as List).map((e) => Courses.fromJson(e)).toList();
  // print(courses[0].courseName);
  // print(courses[0].courseCode);
  print("List of all:");
  for (var course in courses) {
    print(course.courseName);
    print(course.courseCode);
    print(course.schedule);
    print(courses.length);
  }

  print("Add courses:");
  courses.add(Courses(
      courseName: "Flutter",
      courseCode: "CS001",
      schedule: ["Tuesday 10:00 AM - 12:00 PM"]));
  print(courses[4].courseName);
  print(courses.length);
  print("Remove courses:");
  courses.removeWhere((element) => element.courseCode == "CS001");
  print(courses.length);
  print("\nList of all courses and their schedules:");
  for (var course in courses) {
    print(course.courseName);
    print(course.courseCode);
    print(course.schedule);
  }

  print("\nSearch for courses by name or code:");
  var search =
      courses.firstWhere((element) => element.courseName == "Database Systems");
  print(search.courseCode);
}
