
import 'dart:ffi';

class SchollModel{


  List<StudentsModel> lis;



SchollModel({
  required this.lis
});


factory  SchollModel.fromJson(Map<String,dynamic> json){

List<StudentsModel> listemp= [];
  for(var val in json["students"]){
    listemp.add(StudentsModel.fromJson(val));
  }


  return SchollModel(lis: listemp);


}


Map<String,dynamic> toJSon(){

  List<Map<String,dynamic>> lisMAp = [];

  for(var val in lis){

    lisMAp.add(val.toJson());
  }

  return{

    "students" : lisMAp

  };
}



addOrUpdateGrades({required String studentName,required List<double> newGrades , required bool ser }){


  if(ser){

    for(int i = 0 ; i < lis.length ; i++){
      if(lis[i].name == studentName){
        lis[i].grades = newGrades;
        return;
      }
    }

  }
  else{


    lis.add(StudentsModel(grades: newGrades, id: "s00${lis.length+1}", name: studentName));

  }

}


calculateAverageGrade(String studentName){

  for(int i = 0 ; i < lis.length ; i++){
      if(lis[i].name == studentName){

        double avg = 0;


        for(var val in lis[i].grades){

          avg += val;

        }
        
        print("the avg is : ${avg/lis[i].grades.length}");
        return;
      }
    }




}


getHighestGrade(String studentName){


  for(int i = 0 ; i < lis.length ; i++){
      if(lis[i].name == studentName){

        double high = 0;


        for(var val in lis[i].grades){

          if(val > high){
            high = val;
          }

          

        }
        
        print("the avg is : $high");
        return;
      }
    }

}


getLowestGrade(String studentName){


  for(int i = 0 ; i < lis.length ; i++){
      if(lis[i].name == studentName){

        double low = 0;


        for(var val in lis[i].grades){

          if(val < low){
            low = val;
          }

          

        }
        
        print("the avg is : $low");
        return;
      }
    }

}


listAllStudents(){

  print(toJSon());

}









}



class StudentsModel{


  String id;
  String name;
  List<double> grades;



  StudentsModel({
    required this.grades,
    required this.id,
    required this.name,
  });



  factory  StudentsModel.fromJson(Map<String,dynamic> json){


    return  StudentsModel(grades: json["grades"], id: json["id"], name: json["name"]);

  }


  Map<String,dynamic> toJson(){


    return{

      "id": id,
      "name": name,
      "grades": grades

    };
  }


  
}