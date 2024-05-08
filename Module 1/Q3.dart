// Write a program to make a square and cube of number.

import 'dart:io';

void main() {
  int? num;

  print("Enter number: ");
  num = int.parse(stdin.readLineSync()!);

  print("Square of $num is ${num * num}.");

  print("Cube of $num is ${num * num * num}.");

}
