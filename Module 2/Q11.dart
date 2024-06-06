// Q.1  Write a Program to check the given year is leap year or not.

import 'dart:io';

void main() {
  int? year;

  print("Enter year: ");

  year = int.parse(stdin.readLineSync()!);

  if (year % 4 == 0) {
    print("Leap year");
  } else {
    print("Not a leap year");
  }
}
