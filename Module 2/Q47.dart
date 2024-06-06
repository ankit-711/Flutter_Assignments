// Q.47  Create a program using Set.

void main() {
  Set<String> carBrands = {'Toyota', 'Honda', 'Ford', 'Chevrolet', 'Nissan'};

  print("Set of car brands: $carBrands");

  carBrands.add('BMW');

  print('After adding a new brand: $carBrands');

  carBrands.remove('Ford');

  print('After removing a brand: $carBrands');

  if (carBrands.contains('Toyota')) {
    print('Toyota is in the set');
  } else {
    print('Toyota is not in the set');
  }
}
