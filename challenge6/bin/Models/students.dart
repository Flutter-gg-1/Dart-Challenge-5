class Student {
  String id;
  String name;
  List<double> grades;

  Student({required this.id, required this.name, required this.grades});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(id: json["id"], name: json["name"], grades: json["grades"]);
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name, "grades": grades};
  }
}
