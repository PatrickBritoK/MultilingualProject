// 1. Variables and Data Types
// Variables are like "boxes" where we store information. Each box has a specific type.

let age = 25;            // Integer type: stores whole numbers
let height = 1.75;       // Floating-point type: stores numbers with decimal places
let name = "John";       // String type: stores a sequence of characters
let student = true;      // Boolean type: stores true or false

console.log("Age: " + age);
console.log("Height: " + height);
console.log("Name: " + name);
console.log("Student: " + student);

// 2. Operators
// Arithmetic, comparison, and logical operators.

let sum = 10 + 5;  // Addition
let remainder = 10 % 3; // Modulus (remainder of division)
console.log("Sum: " + sum); 
console.log("Remainder: " + remainder);

let result = 10 > 5; // Checks if 10 is greater than 5
let equals = 5 == 5;    // Checks if 5 is equal to 5
console.log("10 > 5: " + result);
console.log("5 == 5: " + equals);

let andCondition = (10 > 5) && (5 < 10);  // Logical AND: both conditions must be true
let orCondition = (10 > 5) || (5 > 10); // Logical OR: at least one condition must be true
console.log("AND condition: " + andCondition);
console.log("OR condition: " + orCondition);

// 3. Conditional Statements
// Conditions for making decisions in the program.

let personAge = 20;
if (personAge >= 18) {
    console.log("You are an adult.");
} else {
    console.log("You are a minor.");
}

// Switch Case: an alternative to if-else when there are multiple possible conditions
let number = 2;
switch (number) {
    case 1:
        console.log("It is one");
        break;
    case 2:
        console.log("It is two");
        break;
    default:
        console.log("Another number");
}

// 4. Loops
// Used when we want to repeat a block of code multiple times.

for (let i = 1; i <= 5; i++) { 
    console.log(i);  // Will print 1, 2, 3, 4, 5
}

let j = 1;
while (j <= 5) {
    console.log(j);  // Will print 1, 2, 3, 4, 5
    j++;  // Increments the value of j
}

let k = 1;
do {
    console.log(k);  // Will print 1, 2, 3, 4, 5
    k++;
} while (k <= 5);

// 5. Functions (Methods)
// Functions are used to organize and reuse blocks of code.

function greeting() {
    console.log("Hello, welcome!");
}

function add(a, b) {
    return a + b;  // Returns the sum of the two numbers
}

greeting();  // Calls the greeting function
let sumResult = add(5, 3);  // Calls the add function
console.log("Sum result: " + sumResult);

// 6. Input and Output
// Used to interact with the user, capturing inputs and displaying outputs.

function inputOutput() {
    let name = prompt("Enter your name: ");  // Captures the user's name
    console.log("Hello, " + name);
}

// 7. String Manipulation
// Strings are sequences of characters, useful for working with text.

function stringManipulation() {
    let name = "John";
    let greetingMessage = "Hello, " + name + "!";  // Concatenating strings
    console.log(greetingMessage);  // Displays: Hello, John!

    let word = "programming";
    let length = word.length;  // Checks the length of the string
    let contains = word.includes("gram");  // Checks if the word contains "gram"
    console.log("Word length: " + length);
    console.log("Contains 'gram': " + contains);
}

// 8. Arrays
// Arrays are used to store multiple values of the same type in a single variable.

function arrayExample() {
    let numbers = [1, 2, 3, 4, 5];  // Declaring and initializing an array
    console.log("First number: " + numbers[0]);  // Accesses the first value
    console.log("Last number: " + numbers[numbers.length - 1]);  // Accesses the last value
}

// 9. Class and Objects
// Creating a class and instantiating objects from it.

class Person {
    constructor(name, age) {
        this.name = name;
        this.age = age;
    }

    introduce() {
        console.log("Hello, my name is " + this.name + " and I am " + this.age + " years old.");
    }
}

function classObjectExample() {
    let person1 = new Person("Nico", 30);  // Creating an object from the Person class
    person1.introduce();  // Calling the method
}

// 10. Concept of `this`
// `this` is used to refer to the current object inside a class method.

function thisExample() {
    class Car {
        constructor(model) {
            this.model = model;  // 'this' refers to the class attribute
        }

        showModel() {
            console.log("Car model: " + this.model);
        }
    }

    let car = new Car("Beetle");
    car.showModel();  // Displays: Car model: Beetle
}

// 11. Inheritance
// Creating a subclass that inherits from a superclass.

class Animal {
    constructor(name) {
        this.name = name;
    }

    makeSound() {
        console.log("The animal makes a sound.");
    }
}

class Dog extends Animal {
    makeSound() {
        console.log("The dog barks.");
    }
}

function inheritanceExample() {
    let dog = new Dog();
    dog.makeSound();  // The overridden method is called
}

// 12. Encapsulation
// Using access modifiers to protect data.

function encapsulationExample() {
    class BankAccount {
        #balance;  // Private attribute

        constructor() {
            this.#balance = 0;
        }

        deposit(amount) {
            if (amount > 0) {
                this.#balance += amount;
            }
        }

        getBalance() {
            return this.#balance;  // Accessing the balance through a public method
        }
    }

    let account = new BankAccount();
    account.deposit(500);
    console.log("Account balance: " + account.getBalance());
}

// 13. Exceptions
// Error handling during program execution.

function exceptionExample() {
    try {
        let result = 10 / 0;  // Division by zero
    } catch (e) {
        console.log("Error: " + e.message);
    }
}

// 14. Working with `ArrayList`
// ArrayList is a collection that can grow dynamically.

function arrayListExample() {
    let list = ["Java", "Python", "C++"];

    console.log("List size: " + list.length);  // Displays the size of the list
    console.log("First item: " + list[0]);  // Accesses the first item in the list
}
