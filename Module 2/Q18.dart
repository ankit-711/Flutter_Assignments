// Q.18 Write a Program of Addition, Subtraction, Multiplication and
//      Division using Switch case.(Must Be Menu Driven).

import 'dart:io';

void main() {
  int? num1, num2, choice;

  print("Enter number 1: ");
  num1 = int.parse(stdin.readLineSync()!);

  print("Enter number 2: ");
  num2 = int.parse(stdin.readLineSync()!);

  print("Enter your choice: 1 for '+', 2 for '-', 3 for '*', 4 for '/'");
  choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print("Addition of $num1 and $num2 is ${num1 + num2}");
      break;
    case 2:
      print("Subtraction of $num1 and $num2 is ${num1 - num2}");
      break;
    case 3:
      print("Multiplication of $num1 and $num2 is ${num1 * num2}");
      break;
    case 4:
      if (num2 == 0) {
        print("Can't divide by zero.");
      }
      else{
        print("Division of $num1 and $num2 is ${num1 / num2}");
      }
      break;
    default:
      print("Invalid choice");
  }
}
