// Write a program to find the simple Interest.

import 'dart:io';

void main() {
  int? amount;
  double? rate, time, SI;

  print("Enter the principal amount: ");
  amount = int.parse(stdin.readLineSync()!);

  print("Enter the rate of interest: ");
  rate = double.parse(stdin.readLineSync()!);

  print("Enter the time(in years): ");
  time = double.parse(stdin.readLineSync()!);

  SI = (amount * time * rate) / 100;

  print("Simple interest is $SI");
}
