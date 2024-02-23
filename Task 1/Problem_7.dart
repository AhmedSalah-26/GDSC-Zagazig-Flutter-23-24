import 'dart:io';

void main() {
  print("enter distance");

  double distance = double.parse(stdin.readLineSync()!); // in kilometers
  print("enter speed");

  double speed = double.parse(stdin.readLineSync()!); ; // in kilometers per hour

  double timeInHours = distance / speed;
  double timeInMinutes = timeInHours * 60;

  print('Time taken to reach the office: ${timeInMinutes.toStringAsFixed(2)} minutes');
}
