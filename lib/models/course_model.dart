




class University{
  
List<CourseModel> courseLis = [];


University({
  required this.courseLis
});

factory University.fromJson(Map<String,dynamic> json){

  List<CourseModel> tmepLis = [];
  

   for(var val in json["courses"] ){
    

    tmepLis.add(CourseModel.fromJson(val));
  }

  

return University(courseLis:tmepLis );
}


Map<String,dynamic> toJson(){


  List<Map<String,dynamic>> tmepLis = [];

  for(var val in courseLis ){

    tmepLis.add(val.toJson());
  }

  return{

    "courses" : tmepLis


    

  };

}



addCourse(CourseModel course){

  courseLis.add(course);



}


removeCourseByCode(String courseCode){

  for(int i = 0 ; i< courseLis.length ; i++){
    if(courseLis[i].courseCode == courseCode){
      courseLis.removeAt(i);
    }
  }

}


listAllCourses(){


  print(toJson());

  

}


searchCourses({required String query , required bool code}){


  if(code){

    for(int i = 0 ; i< courseLis.length ; i++){
    if(courseLis[i].courseCode == query){
      print("found");
      print(courseLis[i].toJson());
      break;
    }
  }

  }

  else{

    for(int i = 0 ; i< courseLis.length ; i++){
    if(courseLis[i].courseName == query){
      print("found");
      print(courseLis[i].toJson());
      break;
    }
  }

  }

}

}



class CourseModel{

  String courseName;
  String courseCode;
  List<String> schedule;


CourseModel({
  required this.courseCode,
  required this.courseName,
  required this.schedule,
});


factory CourseModel.fromJson(Map<String,dynamic> json){


  return CourseModel(courseCode: json["courseCode"], courseName: json["courseName"], schedule: json["schedule"]);

}

Map<String,dynamic> toJson(){


  return{

    "courseName": courseName,
      "courseCode": courseCode,
      "schedule": schedule

  };
}


  
}