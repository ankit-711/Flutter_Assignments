// Write a program you have to print the Fibonacci series up to user given number.

import 'dart:io';

void main() {
  int? num, i;
  int? f1 = 0, f2 = 1, f3 = 1;

  print("Enter number: ");
  num = int.parse(stdin.readLineSync()!);

  print("$f1 \n$f2 \n$f3");

  for (i = 1; i! <= (num-3); i++) {
    f1 = f2;
    f2 = f3;
    f3 = f1! + f2!;
    print(f3);
  }
}
