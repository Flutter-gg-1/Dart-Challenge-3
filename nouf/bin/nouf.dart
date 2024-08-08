import 'model/courses.dart';
import 'data/data.dart';
import 'dart:convert';


 
  void main() {

  var university = University.fromJson(mydata);

 
 

  university.addCourse(Course(
    courseName: "Operating Systems",
    courseCode: "CS302",
    schedule: ["Monday 3:00 PM - 5:00 PM", "Wednesday 3:00 PM - 5:00 PM"],
  ));
  university.listAllCourses();

 
 university.removeCourse("CS101");
    university.listAllCourses();


  
  var searchedCourses = university.searchCourses("Data");
  print('Search Results:');
  for (var course in searchedCourses) {
    print('Course Name: ${course.courseName}');
    print('Course Code: ${course.courseCode}');
    print('Schedule: ${course.schedule}');
    print('');
  }

 
  //university.listAllCourses();
}
