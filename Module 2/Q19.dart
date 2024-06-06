// Q.19  Write a program of to find out the Area of Triangle, Rectangle and
//       Circle using If Condition.(Must Be Menu Driven).

import 'dart:io';

void main() {
  int? choice;
  double? height, base, radius, width, length;

  print("Enter your choice to find Area: ");
  print("1 for Triangle \n2 for Rectangle \n3 for Circle");

  choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    print("Enter height and base: ");
    height = double.parse(stdin.readLineSync()!);
    base = double.parse(stdin.readLineSync()!);

    print("Area of Triangle is ${0.5 * height * base}");
  } else if (choice == 2) {
    print("Enter width and length: ");
    width = double.parse(stdin.readLineSync()!);
    length = double.parse(stdin.readLineSync()!);

    print("Area of Rectangle is ${width * length}");
  } else if (choice == 3) {
    print("Enter radius: ");
    radius = double.parse(stdin.readLineSync()!);

    print("Area of Circle is ${3.14 * radius * radius}");
  } else {
    print("Invalid Choice");
  }
}
