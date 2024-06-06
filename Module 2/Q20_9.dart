// Write a program make a summation of given number.(E.g.:- 1523 ans:- 11)

import 'dart:io';

void main() {
  int? num;
  int? rem, sum = 0;

  print("Enter number: ");
  num = int.parse(stdin.readLineSync()!);

  while (num != 0) {
    rem = num! % 10;
    
    sum = sum! + rem;

    num = (num ~/ 10);
  }
  print("Summation of given number is $sum.");
}
