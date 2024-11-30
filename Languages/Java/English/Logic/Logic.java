// 1. Variables and Data Types
// Variables are like "boxes" where we store information. Each box has a specific type.

public class Example {
    public static void main(String[] args) {
        // Basic data types
        int age = 25;            // Integer type: stores whole numbers
        double height = 1.75;    // Floating-point type: stores numbers with decimals
        String name = "John";    // String type: stores a sequence of characters
        boolean student = true;  // Boolean type: stores true or false

        System.out.println("Age: " + age);
        System.out.println("Height: " + height);
        System.out.println("Name: " + name);
        System.out.println("Student: " + student);
    }
}

// 2. Operators
// Arithmetic, comparison, and logical operators.

// Arithmetic Operators
int sum = 10 + 5;  // Addition
int remainder = 10 % 3; // Modulo (remainder of division)
System.out.println("Sum: " + sum); 
System.out.println("Remainder: " + remainder);

// Comparison Operators
boolean result = 10 > 5; // Checks if 10 is greater than 5
boolean equals = 5 == 5;    // Checks if 5 is equal to 5
System.out.println("10 > 5: " + result);
System.out.println("5 == 5: " + equals);

// Logical Operators
boolean andCondition = (10 > 5) && (5 < 10);  // Logical AND: both conditions need to be true
boolean orCondition = (10 > 5) || (5 > 10); // Logical OR: at least one condition needs to be true
System.out.println("AND Condition: " + andCondition);
System.out.println("OR Condition: " + orCondition);

// 3. Conditional Structures
// Conditions for making decisions in the program.

int personAge = 20;
if (personAge >= 18) {
    System.out.println("You are an adult.");
} else {
    System.out.println("You are a minor.");
}

// Switch Case: an alternative to if-else when we have multiple possible conditions
int number = 2;
switch (number) {
    case 1:
        System.out.println("It is one");
        break;
    case 2:
        System.out.println("It is two");
        break;
    default:
        System.out.println("Other number");
}

// 4. Loops
// Used when we want to repeat a block of code multiple times.

for (int i = 1; i <= 5; i++) { 
    System.out.println(i);  // Will print 1, 2, 3, 4, 5
}

int j = 1;
while (j <= 5) {
    System.out.println(j);  // Will print 1, 2, 3, 4, 5
    j++;  // Increment the value of j
}

int k = 1;
do {
    System.out.println(k);  // Will print 1, 2, 3, 4, 5
    k++;
} while (k <= 5);

// 5. Functions (Methods)
// Functions are used to organize and reuse blocks of code.

public static void greeting() {
    System.out.println("Hello, welcome!");
}

public static int sum(int a, int b) {
    return a + b;  // Returns the sum of the two numbers
}

public static void main(String[] args) {
    greeting();  // Calls the greeting function
    int sumResult = sum(5, 3);  // Calls the sum function
    System.out.println("Sum result: " + sumResult);
}

// 6. Input and Output
// Used for interacting with the user, capturing inputs and displaying outputs.

import java.util.Scanner;

public static void inputOutput() {
    Scanner scanner = new Scanner(System.in);
    System.out.print("Enter your name: ");
    String name = scanner.nextLine();  // Captures the user's name
    System.out.println("Hello, " + name);
}

// 7. String Manipulation
// Strings are sequences of characters, useful for working with text.

public static void stringManipulation() {
    String name = "John";
    String greeting = "Hello, " + name + "!";  // Concatenating strings
    System.out.println(greeting);  // Displays: Hello, John!

    String word = "programming";
    int length = word.length();  // Checks the length of the string
    boolean contains = word.contains("gram");  // Checks if the word contains "gram"
    System.out.println("Word length: " + length);
    System.out.println("Contains 'gram': " + contains);
}

// 8. Arrays
// Arrays are used to store multiple values of the same type in a single variable.

public static void exampleArrays() {
    int[] numbers = {1, 2, 3, 4, 5};  // Declaration and initialization of an array
    System.out.println("First number: " + numbers[0]);  // Accesses the first value
    System.out.println("Last number: " + numbers[numbers.length - 1]);  // Accesses the last value
}

// 9. Class and Objects
// Creating a class and instantiating objects from it.

class Person {
    String name;
    int age;

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public void introduce() {
        System.out.println("Hello, my name is " + name + " and I am " + age + " years old.");
    }
}

public static void exampleClassObjects() {
    Person person1 = new Person("Nico", 30);  // Creating an object of the Person class
    person1.introduce();  // Calling the method
}

// 10. Concept of `this`
// `this` is used to refer to the current object inside a method of the class.

public static void exampleThis() {
    class Car {
        String model;

        public Car(String model) {
            this.model = model;  // 'this' refers to the class attribute
        }

        public void showModel() {
            System.out.println("Car model: " + this.model);
        }
    }

    Car car = new Car("Beetle");
    car.showModel();  // Displays: Car model: Beetle
}

// 11. Inheritance
// Creating a child class that inherits from a parent class.

class Animal {
    String name;

    public void makeSound() {
        System.out.println("The animal makes a sound.");
    }
}

class Dog extends Animal {
    public void makeSound() {
        System.out.println("The dog barks.");
    }
}

public static void exampleInheritance() {
    Dog dog = new Dog();
    dog.makeSound();  // The overridden method is called
}

// 12. Encapsulation
// Using access modifiers to protect data.

public static void exampleEncapsulation() {
    class BankAccount {
        private double balance;  // Private attribute

        public void deposit(double amount) {
            if (amount > 0) {
                balance += amount;
            }
        }

        public double getBalance() {
            return balance;  // Access to balance through a public method
        }
    }

    BankAccount account = new BankAccount();
    account.deposit(500);
    System.out.println("Account balance: " + account.getBalance());
}

// 13. Exceptions
// Handling errors during the program execution.

public static void exampleException() {
    try {
        int result = 10 / 0;  // Division by zero
    } catch (ArithmeticException e) {
        System.out.println("Error: " + e.getMessage());
    }
}

// 14. Working with `ArrayList`
// An ArrayList is a collection that can grow dynamically.

import java.util.ArrayList;

public static void exampleArrayList() {
    ArrayList<String> list = new ArrayList<>();
    list.add("Java");
    list.add("Python");
    list.add("C++");

    System.out.println("List size: " + list.size());  // Displays the size of the list
    System.out.println("First item: " + list.get(0));  // Accesses the first item in the list
}
