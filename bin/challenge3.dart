import 'package:challenge3/models/course.dart';
import 'package:challenge3/models/university.dart';
import 'package:challenge3/dataset.dart';

void main() {
  University university = University.fromJson(dataset);
  university.listAllCourses();
  print("-"*40);
  university.addCourse(course : Course(courseCode: "FLUTTER101", courseName: "Flutter course", schedule: ["Sunday","Monday"]));
  university.listAllCourses();
  print("-"*40);
  university.addCourse(course : Course(courseCode: "D101", courseName: "Dart course", schedule: ["Sunday","Monday",'friday']));
  university.listAllCourses();
  print("-"*40);
  university.removeCourseByCode(courseCode:"D101");
  university.listAllCourses();
  print("-"*40);
  university.searchCourses(query: "flutter");
  print("-"*40);
}