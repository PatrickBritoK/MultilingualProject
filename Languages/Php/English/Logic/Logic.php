<?php

// 1. Variables and Data Types
// Variables are like "boxes" where we store information. Each box has a specific type.

$age = 25;            // Integer type: stores whole numbers
$height = 1.75;       // Float type: stores numbers with decimals
$name = "João";       // String type: stores a sequence of characters
$student = true;      // Boolean type: stores true or false

echo "Age: " . $age . "\n";
echo "Height: " . $height . "\n";
echo "Name: " . $name . "\n";
echo "Student: " . ($student ? "Yes" : "No") . "\n";

// 2. Operators
// Arithmetic, comparison, and logical operators.

// Arithmetic Operators
$sum = 10 + 5;  // Addition
$remainder = 10 % 3; // Modulo (remainder of division)
echo "Sum: " . $sum . "\n"; 
echo "Remainder: " . $remainder . "\n";

// Comparison Operators
$result = 10 > 5; // Checks if 10 is greater than 5
$equal = 5 == 5;   // Checks if 5 equals 5
echo "10 > 5: " . ($result ? "True" : "False") . "\n";
echo "5 == 5: " . ($equal ? "True" : "False") . "\n";

// Logical Operators
$andCondition = (10 > 5) && (5 < 10);  // Logical AND: both conditions must be true
$orCondition = (10 > 5) || (5 > 10);   // Logical OR: one condition must be true
echo "AND Condition: " . ($andCondition ? "True" : "False") . "\n";
echo "OR Condition: " . ($orCondition ? "True" : "False") . "\n";

// 3. Conditional Statements
// Conditions to make decisions in the program.

$personAge = 20;
if ($personAge >= 18) {
    echo "You are an adult.\n";
} else {
    echo "You are a minor.\n";
}

// Switch Case: alternative to if-else when we have multiple possible conditions
$number = 2;
switch ($number) {
    case 1:
        echo "It is one\n";
        break;
    case 2:
        echo "It is two\n";
        break;
    default:
        echo "Another number\n";
}

// 4. Loops
// Used when we want to repeat a block of code multiple times.

for ($i = 1; $i <= 5; $i++) { 
    echo $i . "\n";  // Will print 1, 2, 3, 4, 5
}

$j = 1;
while ($j <= 5) {
    echo $j . "\n";  // Will print 1, 2, 3, 4, 5
    $j++;  // Increment j
}

$k = 1;
do {
    echo $k . "\n";  // Will print 1, 2, 3, 4, 5
    $k++;
} while ($k <= 5);

// 5. Functions (Methods)
// Functions are used to organize and reuse blocks of code.

function greeting() {
    echo "Hello, welcome!\n";
}

function add($a, $b) {
    return $a + $b;  // Returns the sum of the two numbers
}

greeting();  // Calls the greeting function
$sumResult = add(5, 3);  // Calls the add function
echo "Sum result: " . $sumResult . "\n";

// 6. Input and Output
// Used to interact with the user by capturing inputs and displaying outputs.

function inputOutput() {
    $name = readline("Enter your name: ");  // Captures the user's name
    echo "Hello, " . $name . "\n";
}

// 7. String Manipulation
// Strings are sequences of characters, useful for working with text.

function stringManipulation() {
    $name = "João";
    $greeting = "Hello, " . $name . "!";  // Concatenating strings
    echo $greeting . "\n";  // Displays: Hello, João!

    $word = "programming";
    $length = strlen($word);  // Checks the length of the string
    $contains = strpos($word, "gram") !== false;  // Checks if the word contains "gram"
    echo "Length of the word: " . $length . "\n";
    echo "Contains 'gram': " . ($contains ? "Yes" : "No") . "\n";
}

// 8. Arrays
// Arrays are used to store multiple values of the same type in a single variable.

function exampleArrays() {
    $numbers = [1, 2, 3, 4, 5];  // Declaration and initialization of an array
    echo "First number: " . $numbers[0] . "\n";  // Accesses the first value
    echo "Last number: " . $numbers[count($numbers) - 1] . "\n";  // Accesses the last value
}

// 9. Classes and Objects
// Creating a class and instantiating objects from it.

class Person {
    public $name;
    public $age;

    function __construct($name, $age) {
        $this->name = $name;
        $this->age = $age;
    }

    function introduce() {
        echo "Hello, my name is " . $this->name . " and I am " . $this->age . " years old.\n";
    }
}

function exampleClassObjects() {
    $person1 = new Person("Nico", 30);  // Creates an object from the Person class
    $person1->introduce();  // Calls the method
}

// 10. The `this` Concept
// `this` is used to refer to the current object inside a class method.

function exampleThis() {
    class Car {
        public $model;

        function __construct($model) {
            $this->model = $model;  // 'this' refers to the class attribute
        }

        function showModel() {
            echo "Car model: " . $this->model . "\n";
        }
    }

    $car = new Car("Fusca");
    $car->showModel();  // Displays: Car model: Fusca
}

// 11. Inheritance
// Creating a child class that inherits from a parent class.

class Animal {
    public $name;

    function __construct($name) {
        $this->name = $name;
    }

    function makeSound() {
        echo "The animal makes a sound.\n";
    }
}

class Dog extends Animal {
    function makeSound() {
        echo "The dog barks.\n";
    }
}

function exampleInheritance() {
    $dog = new Dog("Rex");
    $dog->makeSound();  // The overridden method is called
}

// 12. Encapsulation
// Using access modifiers to protect data.

function exampleEncapsulation() {
    class BankAccount {
        private $balance;  // Private attribute

        function __construct() {
            $this->balance = 0;
        }

        function deposit($amount) {
            if ($amount > 0) {
                $this->balance += $amount;
            }
        }

        function getBalance() {
            return $this->balance;  // Accesses the balance through a public method
        }
    }

    $account = new BankAccount();
    $account->deposit(500);
    echo "Account balance: " . $account->getBalance() . "\n";
}

// 13. Exceptions
// Handling errors during program execution.

function exampleException() {
    try {
        $result = 10 / 0;  // Division by zero
    } catch (Exception $e) {
        echo "Error: " . $e->getMessage() . "\n";
    }
}

// 14. Working with `ArrayList`
// ArrayList is a collection that can grow dynamically.

function exampleArrayList() {
    $list = ["Java", "Python", "C++"];

    echo "List size: " . count($list) . "\n";  // Displays the size of the list
    echo "First item: " . $list[0] . "\n";  // Accesses the first item in the list
}

?>
