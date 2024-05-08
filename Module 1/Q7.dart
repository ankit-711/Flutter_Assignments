// Write a program to convert temperature from degree centigrade to Fahrenheit.

import 'dart:io';

void main() {
  double? centigrade, fahrenheit;

  print("Enter temperature in centigrade: ");
  centigrade = double.parse(stdin.readLineSync()!);

  fahrenheit = ((9 / 5) * centigrade) + 32;

  print("Temperature in fahrenheit is $fahrenheit");
}
