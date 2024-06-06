// Q.14  Write a program to find the Max number from the given three
//       number using Ternary Operator.

import 'dart:io';
void main() {
  int num1, num2, num3;

  print("Enter number 1: ");
  num1 = int.parse(stdin.readLineSync()!);

  print("Enter number 2: ");
  num2 = int.parse(stdin.readLineSync()!);

  print("Enter number 3: ");
  num3 = int.parse(stdin.readLineSync()!);

  int maxNum = (num1 > num2) ? ((num1 > num3) ? num1 : num3) : ((num2 > num3) ? num2 : num3);

  print("The maximum number is: $maxNum");
  
}
