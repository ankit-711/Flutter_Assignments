// Write a program to find the Area of Circle.

import 'dart:io';

void main() {
  double? radius;

  print("Enter radius: ");
  radius = double.parse(stdin.readLineSync()!);

  print("Area of Circle is ${3.14 * radius * radius}");
}
