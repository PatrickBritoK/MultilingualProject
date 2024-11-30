// 1. Variables and Data Types
// Variables are like "boxes" where we store information. Each box has a specific type.

let age: number = 25;            // Integer type: stores whole numbers
let height: number = 1.75;       // Floating-point type: stores numbers with decimal points
let name: string = "John";       // String type: stores a sequence of characters
let student: boolean = true;     // Boolean type: stores true or false

console.log("Age: " + age);
console.log("Height: " + height);
console.log("Name: " + name);
console.log("Student: " + student);

// 2. Operators
// Arithmetic, comparison, and logical operators.

// Arithmetic Operators
let sum: number = 10 + 5;  // Addition
let remainder: number = 10 % 3; // Modulo (remainder of the division)
console.log("Sum: " + sum); 
console.log("Remainder: " + remainder);

// Comparison Operators
let result: boolean = 10 > 5; // Checks if 10 is greater than 5
let equal: boolean = 5 == 5;  // Checks if 5 is equal to 5
console.log("10 > 5: " + result);
console.log("5 == 5: " + equal);

// Logical Operators
let andCondition: boolean = (10 > 5) && (5 < 10);  // 'AND' logical: both conditions must be true
let orCondition: boolean = (10 > 5) || (5 > 10);   // 'OR' logical: one of the conditions must be true
console.log("AND Condition: " + andCondition);
console.log("OR Condition: " + orCondition);

// 3. Conditional Statements
// Conditions for making decisions in the program.

let personAge: number = 20;
if (personAge >= 18) {
    console.log("You are an adult.");
} else {
    console.log("You are a minor.");
}

// Switch Case: an alternative to if-else when we have multiple conditions
let number: number = 2;
switch (number) {
    case 1:
        console.log("It's one");
        break;
    case 2:
        console.log("It's two");
        break;
    default:
        console.log("Another number");
}

// 4. Loops (Repetition)
// Used when we want to repeat a block of code multiple times.

for (let i: number = 1; i <= 5; i++) { 
    console.log(i);  // Prints 1, 2, 3, 4, 5
}

let j: number = 1;
while (j <= 5) {
    console.log(j);  // Prints 1, 2, 3, 4, 5
    j++;  // Increments the value of j
}

let k: number = 1;
do {
    console.log(k);  // Prints 1, 2, 3, 4, 5
    k++;
} while (k <= 5);

// 5. Functions (Methods)
// Functions are used to organize and reuse blocks of code.

function greeting(): void {
    console.log("Hello, welcome!");
}

function add(a: number, b: number): number {
    return a + b;  // Returns the sum of the two numbers
}

greeting();  // Calls the greeting function
let sumResult: number = add(5, 3);  // Calls the add function
console.log("Sum result: " + sumResult);

// 6. Input and Output
// Used to interact with the user, capturing input and displaying output.

function inputOutput(): void {
    let userName: string = prompt("Enter your name: ");  // Captures the user's name
    console.log("Hello, " + userName);
}

// 7. String Manipulation
// Strings are sequences of characters, useful for working with text.

function stringManipulation(): void {
    let userName: string = "John";
    let greetingMessage: string = "Hello, " + userName + "!";  // Concatenating strings
    console.log(greetingMessage);  // Displays: Hello, John!

    let word: string = "programming";
    let length: number = word.length;  // Checks the length of the string
    let contains: boolean = word.includes("gram");  // Checks if the word contains "gram"
    console.log("Word length: " + length);
    console.log("Contains 'gram': " + contains);
}

// 8. Arrays
// Arrays are used to store multiple values of the same type in a single variable.

function arrayExample(): void {
    let numbers: number[] = [1, 2, 3, 4, 5];  // Declaration and initialization of an array
    console.log("First number: " + numbers[0]);  // Accesses the first value
    console.log("Last number: " + numbers[numbers.length - 1]);  // Accesses the last value
}

// 9. Classes and Objects
// Creating a class and instantiating objects from it.

class Person {
    name: string;
    age: number;

    constructor(name: string, age: number) {
        this.name = name;
        this.age = age;
    }

    introduce(): void {
        console.log("Hello, my name is " + this.name + " and I am " + this.age + " years old.");
    }
}

function classObjectExample(): void {
    let person1: Person = new Person("Nick", 30);  // Creates an object of the Person class
    person1.introduce();  // Calls the method
}

// 10. The Concept of `this`
// `this` is used to refer to the current object inside a class method.

function thisExample(): void {
    class Car {
        model: string;

        constructor(model: string) {
            this.model = model;  // 'this' refers to the class attribute
        }

        showModel(): void {
            console.log("Car model: " + this.model);
        }
    }

    let car: Car = new Car("Fusca");
    car.showModel();  // Displays: Car model: Fusca
}

// 11. Inheritance
// Creating a child class that inherits from a parent class.

class Animal {
    name: string;

    constructor(name: string) {
        this.name = name;
    }

    makeSound(): void {
        console.log("The animal makes a sound.");
    }
}

class Dog extends Animal {
    makeSound(): void {
        console.log("The dog barks.");
    }
}

function inheritanceExample(): void {
    let dog: Dog = new Dog("Rex");
    dog.makeSound();  // The overridden method is called
}

// 12. Encapsulation
// Using access modifiers to protect data.

function encapsulationExample(): void {
    class BankAccount {
        #balance: number;  // Private attribute

        constructor() {
            this.#balance = 0;
        }

        deposit(amount: number): void {
            if (amount > 0) {
                this.#balance += amount;
            }
        }

        getBalance(): number {
            return this.#balance;  // Accessing the balance through a public method
        }
    }

    let account: BankAccount = new BankAccount();
    account.deposit(500);
    console.log("Account balance: " + account.getBalance());
}

// 13. Exceptions
// Handling errors during program execution.

function exceptionExample(): void {
    try {
        let result: number = 10 / 0;  // Division by zero
    } catch (e) {
        console.log("Error: " + e.message);
    }
}

// 14. Working with `ArrayList`
// The ArrayList is a collection that can grow dynamically.

function arrayListExample(): void {
    let list: string[] = ["Java", "Python", "C++"];

    console.log("List size: " + list.length);  // Displays the size of the list
    console.log("First item: " + list[0]);  // Accesses the first item in the list
}
