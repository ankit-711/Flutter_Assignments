// Write a program you have to print the table of given number.

import 'dart:io';

void main() {
  int? num, i;

  print("Enter number: ");
  num = int.parse(stdin.readLineSync()!);

  for (i = 1; i! <= 10; i++) {
    print("$num * $i = ${num * i}");
  }
}
