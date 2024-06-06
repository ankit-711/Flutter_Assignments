// Q.48  Create a program using Map.

void main() {
  Map<dynamic, dynamic> ProductData = {"Mobile": 20, "Laptop": 50, "TV": 90};

    print("Product data = $ProductData");

  // Update map

  ProductData["TV"] = 120;

    print("Product data (after update) = $ProductData");

  // remove pair

  ProductData.remove("Mobile");

    print("Product data (after remove) = $ProductData");

  // Add new pair in existing map

  ProductData["Tablet"] = 50;

  // Display data

  print("Product data (after add) = $ProductData");
}
