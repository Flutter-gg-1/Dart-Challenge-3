import 'dart:convert';
import 'university.dart';
import 'course.dart';
import 'data.dart';

void main(List<String> arguments) {
  // Implement functions to Parse the JSON data into Dart objects.
  String jsonString = jsonEncode(jsonData);

  // Decode the JSON string back to a map
  Map<String, dynamic> jsonMap = jsonDecode(jsonString);

  University university = University.fromJson(jsonMap);

  university.addCourse(Course(
    courseName: "AI",
    courseCode: "CS401",
    schedule: ["Monday 3:00 PM - 5:00 PM", "Wednesday 3:00 PM - 5:00 PM"],
  ));
  //
  university.removeCourseByCode("CS101");

  List<Course> allCourses = university.listAllCourses();
  List<Course> searchedCourses = university.searchCourses("CS");

  print("All Courses:");
  allCourses.forEach((course) {
    print("${course.courseName} (${course.courseCode}): ${course.schedule}");
  });

  print("\nSearched Courses:");
  searchedCourses.forEach((course) {
    print("${course.courseName} (${course.courseCode}): ${course.schedule}");
  });
  
  // university.toString();
}
