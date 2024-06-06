// Q.46  Create a program using List.

void main() {
  
   List<int> numbers = [16, 72, 43, 84, 25];

   print('Numbers in the list: $numbers');

     numbers.add(6);

   print('After adding a number: $numbers');
 
     numbers.remove(43);

   print('After removing a number: $numbers');

     int length = numbers.length;

   print('Length of the list: $length'); 
   
}