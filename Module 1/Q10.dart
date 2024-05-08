// Write a Program to check the given number is Positive or Negative.

import 'dart:io';

void main() {
  int? num;

  print("Enter number: ");
  num = int.parse(stdin.readLineSync()!);

  if (num > 0) {
    print("Positive Number");
  } else {
    print("Negative Number");
  }
}
