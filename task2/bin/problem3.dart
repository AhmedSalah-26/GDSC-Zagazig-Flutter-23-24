import 'dart:ffi';

Map<String, dynamic>? analyzeGrades(List<int> grades) {
  if (grades.isEmpty) {
    return null;
  }

  int numStudents = grades.length;
  double sum = 0;
  int numValedictorians = 0;
  int numFailed = 0;

  for (int grade in grades) {
    sum += grade;
    if (grade > 85) {
      numValedictorians++;
    } else if (grade < 40) {
      numFailed++;
    }
  }

  double averageGrade = sum / numStudents;

  return {
    'numStudents': numStudents,
    'averageGrade': averageGrade,
    'numValedictorians': numValedictorians,
    'numFailed': numFailed,
  };
}

void main() {
  // Example usage:
  List<int> studentGrades1 = [87, 92, 65, 42, 78, 95];
  List<int> studentGrades2 = []; // Empty list

  Map<String, dynamic>? result1 = analyzeGrades(studentGrades1);
  Map<String, dynamic>? result2 = analyzeGrades(studentGrades2);

  print(result1);
  print(result2);

}
