// Write a program you have to find the factorial of given number.

import 'dart:io';

void main() {
  int? num, i, fact = 1;
  
  print("Enter number: ");
  num = int.parse(stdin.readLineSync()!);

  for (i = 1; i! <= num; i++) {
    fact = fact! * i;
  }
  print("Factorial of $num is $fact.");
}
