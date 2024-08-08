import 'Models/university.dart';
import 'data_set.dart';
import 'Models/course.dart';

void main(List<String> arguments) {
  University university = University.fromJson(data);
  Course course1 =
      Course(courseName: "asdf", courseCode: "asdf", schedule: ["asdf"]);
  university.getAllCourses();
  print("###########################");
  university.addCourse(course1);

  university.getAllCourses();
  print("###########################");

  university.getCourseByCode("asdf");
  

  print("###########################");

  university.deleteCourse("asdf");
  university.getAllCourses();
  print("###########################");

  print(university.toJson());
}
