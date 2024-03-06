// Abstract class Animal
abstract class Animal {
  void makeSound(); // Abstract method
}

// Subclass Dog
class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!"); // Implementing makeSound() method for Dog
  }
}

// Subclass Cat
class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!"); // Implementing makeSound() method for Cat
  }
}

void main() {
  // Creating instances of Dog and Cat
  Animal dog = Dog();
  Animal cat = Cat();

  // Calling makeSound() method for Dog and Cat
  dog.makeSound(); // Output: Woof!
  cat.makeSound(); // Output: Meow!
}
