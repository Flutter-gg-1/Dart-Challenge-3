



import 'package:ch3/json.dart';
import 'package:ch3/models/course_model.dart';

void main(){


  University tes = University.fromJson(jsondata);


  CourseModel course = CourseModel(courseCode: "001", courseName: "oop3", schedule: ["Monday 1:00 PM - 3:00 PM"]);

  tes.addCourse(course);

  tes.removeCourseByCode("001");
print("\n\n");

  tes.searchCourses(query: "CS201", code: true);


  print(tes.toJson());



}