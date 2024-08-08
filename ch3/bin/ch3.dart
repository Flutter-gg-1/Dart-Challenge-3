import 'data_set.dart';
import 'models.dart';

void main() {
  University university = University.fromJson(data);

  print("\n\n----all courses----\n\n");
  print(university.listAllCourses());

  print("\n\n-----------search----------\n\n");
  print(university.searchCourses("CS101"));

  print("\n\n-----------add----------\n\n");
  Course newCourse = Course(
    courseName: "Network Security",
    courseCode: "CS401",
    schedule: ["Monday 3:00 PM - 5:00 PM"],
  );
  university.addCourse(newCourse);
  print(university.listAllCourses());

  print("\n\n-----------remove----------\n\n");
  university.removeCourseByCode("CS102");
  print(university.listAllCourses());
}
