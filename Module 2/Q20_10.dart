// Write a program you have to make a summation of first and last Digit.
// (E.g. 1234 ans:- 5).

import 'dart:io';

void main() {
  int? num;
  int? rem, rev = 0;
  int? first, last;

  print("Enter number: ");
  num = int.parse(stdin.readLineSync()!);

  last = num % 10;
  while (num != 0) {
    rem = num! % 10;
    rev = (rev! * 10) + rem;
    num = (num ~/ 10);
  }
  first = rev! % 10;
  print("Sum of first and last digit of given number is ${first + last}.");
  
}
