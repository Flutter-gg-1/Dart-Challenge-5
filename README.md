### 💡 Challenge 5: Student Grades Tracker with JSON data 📊
Sample JSON Data:
```
{
  "students": [
    {
      "id": "S001",
      "name": "Amina",
      "grades": [85.5, 90.0, 78.0]
    },
    {
      "id": "S002",
      "name": "Khalid",
      "grades": [92.0, 88.5, 79.5]
    },
    {
      "id": "S003",
      "name": "Layla",
      "grades": [70.0, 65.0, 80.0]
    }
  ]
}


```
## Challenge Requirements

### 1. Create Dart Models

Define Dart classes to model the JSON data:

- **Student Class**
  - `id`: String
  - `name`: String
  - `grades`: List of doubles

### 2. JSON Parsing

Implement functions to:

- **Parse JSON Data**
  - Convert the provided JSON data into Dart objects.


### 3. Functions to Interact with Data

Implement the following methods:

- **`addOrUpdateGrades(String studentName, List<double> newGrades)`**
  - Adds or updates grades for a student. Use a list of grades.

- **`calculateAverageGrade(String studentName)`**
  - Calculates and displays the average grade for a student across all subjects.

- **`getHighestGrade(String studentName)`**
  - Determines the highest grade for a student among all subjects.

- **`getLowestGrade(String studentName)`**
  - Determines the lowest grade for a student among all subjects.

- **`listAllStudents()`**
  - Lists all students with their grades and calculated averages.

---
## **Enjoy a lighter challenge after all your hard work! 😌**
