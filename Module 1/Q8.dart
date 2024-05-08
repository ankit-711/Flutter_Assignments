/* Write a program to calculate sum of 5 subjects & find the
   percentage. Subject marks entered by user. */

import 'dart:io';

void main() {
  int? marks, total = 0;
  double? percentage;

  print("Enter 5 subject's marks: ");

  for (int? i = 1; i! <= 5; i++) {
    marks = int.parse(stdin.readLineSync()!);
    total = total! + marks;
  }
  print("Total of 5 subject's marks is $total.");

  percentage = total! / 5;

  print("Percentage is $percentage.");
}
