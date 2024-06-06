// Q.13  Write a program to find the Max number from the given three
//       number using Nested If.

import 'dart:io';

void main() {
  int? num1, num2, num3;

  print("Enter number 1: ");
  num1 = int.parse(stdin.readLineSync()!);

  print("Enter number 2: ");
  num2 = int.parse(stdin.readLineSync()!);

  print("Enter number 3: ");
  num3 = int.parse(stdin.readLineSync()!);

  if (num1 > num2) {
    if (num1 > num3) {
      print("$num1 is max number");
    } else {
      print("$num3 is max number");
    }
  } 
  else if (num2 > num3){
    if(num2 > num1){
      print("$num2 is max number");
    }
    else{
      print("$num3 is max number");
    }
  }
  else{
    print("$num3 is max number");
  }
}
