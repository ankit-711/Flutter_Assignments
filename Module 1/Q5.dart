// Write a program to find the Area of Triangle.

import 'dart:io';

void main() {
  double? height, base;

  print("Enter height: ");
  height = double.parse(stdin.readLineSync()!);

  print("Enter base: ");
  base = double.parse(stdin.readLineSync()!);

  print("Area of Triangle is ${0.5 * height * base}");
}
