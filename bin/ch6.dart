



import 'package:ch6/json.dart';
import 'package:ch6/students.dart';

void main(){



  SchollModel  schollModel = SchollModel.fromJson(jsonData);


  schollModel.addOrUpdateGrades(studentName: "ammar", newGrades: [100,90,8], ser: false);


  

  schollModel.listAllStudents();

}