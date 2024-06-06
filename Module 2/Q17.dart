// Q.17  Write Program to use switch statement. Display Monday to Sunday.

import 'dart:io';

void main() {
  int? choice;

  print(
      "Enter 1 for Monday \nEnter 2 for Tuesday \nEnter 3 for Wednesday \nEnter 4 for Thursday \nEnter 5 for Friday \nEnter 6 for Saturday \nEnter 7 for Sunday");

  choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print("It's Monday");
      break;
    case 2:
      print("It's Tuesday");
      break;
    case 3:
      print("It's Wednesday");
      break;
    case 4:
      print("It's Thursday");
      break;
    case 5:
      print("It's Friday");
      break;
    case 6:
      print("It's Saturday");
      break;
    case 7:
      print("It's Sunday");
      break;
    default:
      print("Invalid choice");
  }
}
