/* 1. B) this
2. D) The subclass method replaces the method in the superclass
3. B) Three: default, named, and factory
4. C) By using the ‘with’ keyword
5. A) Mixins can have constructors*/

import 'dart:io';

class Laptop {
  String brand;
  String model;
  int ram; // in GB
  double price;

  Laptop(this.brand, this.model, this.ram);

  void calculatePrice() {
    // Suggesting prices based on features
    if (brand.toLowerCase() == "hp") {
      price = 600.0;
    } else if (brand.toLowerCase() == "dell") {
      price = 700.0;
    } else if (brand.toLowerCase() == "lenovo") {
      price = 650.0;
    } else {
      price = 500.0; // Default price for other brands
    }

    // Adjust price based on RAM
    if (ram >= 8) {
      price += 100.0;
    } else if (ram >= 4) {
      price += 50.0;
    }
  }

  void displayDetails() {
    print("Brand: $brand");
    print("Model: $model");
    print("RAM: $ram GB");
    print("Price: \$${price.toStringAsFixed(2)}");
  }
}

void main() {
  print("Welcome to the Laptop Shop System!");

  // Get user input for laptop details
  print("Enter laptop brand:");
  String brand = stdin.readLineSync()!;
  print("Enter laptop model:");
  String model = stdin.readLineSync()!;
  print("Enter laptop RAM in GB:");
  int ram = int.parse(stdin.readLineSync()!);

  // Create laptop object
  Laptop laptop = Laptop(brand, model, ram);

  // Calculate and display price
  laptop.calculatePrice();
  laptop.displayDetails();
}
