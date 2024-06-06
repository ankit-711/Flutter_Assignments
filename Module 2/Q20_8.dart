// Write a program to find out the max from given number (E.g. No:- 1562
// Max number is 6.)

import 'dart:io';

void main() {
  int? num;
  int? rem, max = 0;

  print("Enter number: ");
  num = int.parse(stdin.readLineSync()!);

  while (num != 0) {
    rem = num! % 10;

    if (max! < rem) {
      max = rem;
    }

    num = (num ~/ 10);
  }
  print("Max digit from given number is $max.");
}
