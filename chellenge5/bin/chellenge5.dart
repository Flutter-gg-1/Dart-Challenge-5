import 'data.dart';

void main(List<String> arguments) {

}

class Student {
  String id;
  String name;
  List<double> grades;
  static List<Student> students=[];

  Student({
    required this.id,
    required this.name,
    required this.grades,
  }){
    students.add(this);
  }

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(id: json['id'], name: json['name'], grades: json['grades']);
  }

  toJson() {
    return {'id': id, 'name': name, 'grades': grades};
  }

  addOrUpdateGrades(String studentName, List<double> newGrades){
    for (var element in students) {
      if(element.name == studentName){
        element.grades = newGrades;
        return;
      }
    }
  }

  calculateAverageGrade(String studentName){
    double sum = 0;
    for (var element in students) {
      if(element.name == studentName){
        for (var grade in element.grades) {
          sum+=grade;
        }
        return;
      }
    }
  }

  getHighestGrade(String studentName){
double highest = 0;
    for (var element in students) {
      if(element.name == studentName){
        for (var grade in element.grades) {
          if(grade>highest){
          highest = grade;
          }
        }
        return;
      }
    }
  }

  getLowestGrade(String studentName){

  }

listAllStudents(){

}


}
