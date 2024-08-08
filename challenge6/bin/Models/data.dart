import 'dart:io';
import 'students.dart';

class Data {
  List<Student> students;
  Data({required this.students});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        students: List.from(json["students"]).map((element) {
      return Student.fromJson(element);
    }).toList());
  }

  Map<String, dynamic> toJson() {
    return {
      "students": students.map((element) {
        return element.toJson();
      })
    };
  }

  addOrUpdateGrades(String studentName, List<double> newGrades) {
    for (var student in students) {
      if (student.name == studentName) {
        student.grades = newGrades;
        return;
      }
    }
    print("student not found");
  }

  calculateAverageGrade(String studentName) {
    for (var student in students) {
      if (student.name == studentName) {
        double sum = 0;
        for (var grade in student.grades) {
          sum += grade;
        }
        print("the average of $studentName is: ${sum / student.grades.length}");
        return;
      }
    }
    print("student not found");
  }

  getHighestGrade(String studentName) {
    for (var student in students) {
      if (student.name == studentName) {
        double max = 0;
        for (var grade in student.grades) {
          if (grade > max) {
            max = grade;
          }
        }
        print("the max of $studentName grades is: $max");
        return;
      }
    }
    print("student not found");
  }

  getLowestGrade(String studentName) {
    for (var student in students) {
      if (student.name == studentName) {
        double min = 0;
        for (var grade in student.grades) {
          if (grade < min) {
            min = grade;
          }
        }
        print("the min of $studentName grades is: $min");
        return;
      }
    }
    print("student not found");
  }

  listAllStudents() {
    for (var student in students) {
      print(student.toJson());
    }
  }
}
