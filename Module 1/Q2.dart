/* Write a program to make addition, Subtraction, Multiplication and
 Division of Two numbers. */

import 'dart:io';

void main() {
  int? num1, num2;

  print("Enter first number: ");
  num1 = int.parse(stdin.readLineSync()!);

  print("Enter second number: ");
  num2 = int.parse(stdin.readLineSync()!);

  print("Addition of $num1 and $num2 is ${num1 + num2}.");

  print("Subtraction of $num1 and $num2 is ${num1 - num2}.");

  print("Multiplication of $num1 and $num2 is ${num1 * num2}.");

  print("Division of $num1 and $num2 is ${num1 / num2}.");
}
