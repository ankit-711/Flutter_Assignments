import 'dart:io';

void main() {
  int? i, j, c = 1;

  for (i = 1; i! <= 5; i++) {
    for (j = 1; j! <= i; j++) {
      stdout.write("$c ");
      c=c!+1;
    }
    stdout.write("\n");
  }
}
