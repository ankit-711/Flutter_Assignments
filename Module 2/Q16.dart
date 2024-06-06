/* Q.16 Write a program user enter the 5 subjects mark. You have to make a 
        total and find the percentage. percentage > 75 you have to print 
        “Distinction” percentage > 60 and percentage <= 75 you have to
        print “First class” percentage >50 and percentage <= 60 you have to 
        print “Second class” percentage > 35 and percentage <= 50 you have to 
        print “Pass class” Otherwise print “Fail”
*/

import 'dart:io';

void main() {
  int? marks;
  double? pr;
  int? i, sum = 0;

  print("Enter 5 subject's marks: ");

  for (i = 1; i! <= 5; i++) {
    marks = int.parse(stdin.readLineSync()!);
    sum = sum! + marks;
  }
  pr = sum! / 5;

  if (pr > 75) {
    print("Distinction");
  }
  else if(pr <= 75 && pr > 60){
    print("First class");
  }
  else if(pr <= 60 && pr > 50){
    print("Second class");
  }
  else if(pr <= 50 && pr > 35){
    print("Pass class");
  }
  else{
    print("Fail :(");
  }
}
