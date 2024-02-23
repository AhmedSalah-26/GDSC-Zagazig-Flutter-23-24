import 'dart:io';

void main() {
print("enter your string") ;
String inputString = stdin.readLineSync()!;
  String stringWithoutSpaces = inputString.replaceAll(' ', '');
  print('String with spaces removed: $stringWithoutSpaces');
}
