// 1. Variables and Data Types
// Variables are like "boxes" where we store information. Each box has a specific type.

void main() {
  int age = 25; // Integer type: stores whole numbers
  double height = 1.75; // Floating-point type: stores numbers with decimal places
  String name = "John"; // String type: stores a sequence of characters
  bool student = true; // Boolean type: stores true or false

  print("Age: $age");
  print("Height: $height");
  print("Name: $name");
  print("Student: $student");

  // 2. Operators
  // Arithmetic, comparison, and logical operators.

  // Arithmetic Operators
  int sum = 10 + 5; // Addition
  int remainder = 10 % 3; // Modulus (remainder of division)
  print("Sum: $sum");
  print("Remainder: $remainder");

  // Comparison Operators
  bool result = 10 > 5; // Checks if 10 is greater than 5
  bool equals = 5 == 5; // Checks if 5 is equal to 5
  print("10 > 5: $result");
  print("5 == 5: $equals");

  // Logical Operators
  bool andCondition = (10 > 5) && (5 < 10); // Logical AND: both conditions need to be true
  bool orCondition = (10 > 5) || (5 > 10); // Logical OR: one condition needs to be true
  print("AND Condition: $andCondition");
  print("OR Condition: $orCondition");

  // 3. Conditional Structures
  // Conditions to make decisions in the program.

  int personAge = 20;
  if (personAge >= 18) {
    print("You are an adult.");
  } else {
    print("You are a minor.");
  }

  // Switch Case: an alternative to if-else when we have multiple possible conditions
  int number = 2;
  switch (number) {
    case 1:
      print("It's one");
      break;
    case 2:
      print("It's two");
      break;
    default:
      print("Other number");
  }

  // 4. Loops
  // Used when we want to repeat a block of code multiple times.

  for (int i = 1; i <= 5; i++) {
    print(i); // Prints 1, 2, 3, 4, 5
  }

  int j = 1;
  while (j <= 5) {
    print(j); // Prints 1, 2, 3, 4, 5
    j++; // Increment the value of j
  }

  int k = 1;
  do {
    print(k); // Prints 1, 2, 3, 4, 5
    k++;
  } while (k <= 5);

  // 5. Functions (Methods)
  // Functions are used to organize and reuse blocks of code.

  greeting();
  int sumResult = sumFunc(5, 3);
  print("Sum result: $sumResult");

  // 6. Input and Output
  // Used to interact with the user, capturing inputs and displaying outputs.
  // Dart does not have the prompt function, so other methods would be needed.

  // 7. String Manipulation
  stringManipulation();

  // 8. Arrays
  exampleArrays();

  // 9. Class and Objects
  exampleClassObjects();

  // 10. The concept of `this`
  exampleThis();

  // 11. Inheritance
  exampleInheritance();

  // 12. Encapsulation
  exampleEncapsulation();

  // 13. Exceptions
  exampleException();

  // 14. Working with `ArrayList`
  exampleArrayList();
}

// Functions
void greeting() {
  print("Hello, welcome!");
}

int sumFunc(int a, int b) {
  return a + b;
}

void stringManipulation() {
  String name = "John";
  String greetingMessage = "Hello, $name!"; // Concatenating strings
  print(greetingMessage); // Displays: Hello, John!

  String word = "programming";
  int length = word.length; // Checks the length of the string
  bool contains = word.contains("gram"); // Checks if the word contains "gram"
  print("Word length: $length");
  print("Contains 'gram': $contains");
}

void exampleArrays() {
  List<int> numbers = [1, 2, 3, 4, 5]; // Array declaration and initialization
  print("First number: ${numbers[0]}"); // Accesses the first value
  print("Last number: ${numbers[numbers.length - 1]}"); // Accesses the last value
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print("Hello, my name is $name and I am $age years old.");
  }
}

void exampleClassObjects() {
  Person person1 = Person("Nick", 30);
  person1.introduce();
}

void exampleThis() {
  class Car {
    String model;

    Car(this.model);

    void showModel() {
      print("Car model: $model");
    }
  }

  var car = Car("Beetle");
  car.showModel();
}

class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print("The animal makes a sound.");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print("The dog barks.");
  }
}

void exampleInheritance() {
  Dog dog = Dog("Rex");
  dog.makeSound(); // The overridden method is called
}

class BankAccount {
  double _balance = 0; // Private attribute

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  double getBalance() {
    return _balance; // Access to balance through a public method
  }
}

void exampleEncapsulation() {
  BankAccount account = BankAccount();
  account.deposit(500);
  print("Account balance: ${account.getBalance()}");
}

void exampleException() {
  try {
    int result = 10 ~/ 0; // Division by zero
  } catch (e) {
    print("Error: ${e}");
  }
}

void exampleArrayList() {
  List<String> list = ["Java", "Python", "C++"];

  print("List size: ${list.length}"); // Displays the list size
  print("First item: ${list[0]}"); // Accesses the first item of the list
}
