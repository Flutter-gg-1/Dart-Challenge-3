import '../model/course.dart';
import '../model/university.dart';
import 'dart:io';

void main(List<String> arguments) {
  University uin = University();
  late String userInput;
  do {
    print(
        "-1 dipslay all courses 2- add new course 3- remove course 4- search course by name or code");
    userInput = stdin.readLineSync()!;
    switch (userInput) {
      case == "1":
        uin.listAllcourses();
        break;
      case == "2":
        print("name of course");
        String name = stdin.readLineSync()!;
        print("name of code");
        String code = stdin.readLineSync()!;
        print("name of schedule");
        String schedule = stdin.readLineSync()!;
        Course course = Course(name: name, code: code, schedule: [schedule]);
        uin.addCourse(course);
        break;

      case == "3":
        print("input code");
        String code = stdin.readLineSync()!;
        uin.removeCourseByCode(code);
      case == "4":
        print("input name or code of course");
        String search = stdin.readLineSync()!;
        uin.searchCourse(search);
        break;

      default:
        print("error");
    }
  } while (userInput != "0");
}
