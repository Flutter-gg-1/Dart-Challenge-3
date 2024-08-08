import '../model/course.dart';
import '../json/data.dart';

void main(List<String> arguments) {
  List<Course> university = [];
  for (var element in data['courses']) {
    university.add(Course.formJson(element));
  }

}
