// 1. Variables and Data Types
// Variables are like "boxes" where we store information. Each box has a specific type.

val age = 25             // Integer type: stores whole numbers
val height = 1.75        // Floating point type: stores numbers with decimals
val name = "João"        // String type: stores a sequence of characters
val isStudent = true     // Boolean type: stores true or false

println("Age: $age")
println("Height: $height")
println("Name: $name")
println("Student: $isStudent")

// 2. Operators
// Arithmetic, comparison, and logical operators.

// Arithmetic Operators
val sum = 10 + 5        // Addition
val remainder = 10 % 3  // Modulo (remainder of division)
println("Sum: $sum")
println("Remainder: $remainder")

// Comparison Operators
val isGreater = 10 > 5  // Checks if 10 is greater than 5
val isEqual = 5 == 5    // Checks if 5 is equal to 5
println("10 > 5: $isGreater")
println("5 == 5: $isEqual")

// Logical Operators
val andCondition = (10 > 5) && (5 < 10)  // Logical AND: both conditions must be true
val orCondition = (10 > 5) || (5 > 10)   // Logical OR: at least one condition must be true
println("AND condition: $andCondition")
println("OR condition: $orCondition")

// 3. Conditional Statements
// Conditions to make decisions in the program.

val personAge = 20
if (personAge >= 18) {
    println("You are an adult.")
} else {
    println("You are a minor.")
}

// Switch Case: alternative to if-else when there are multiple conditions
val number = 2
when (number) {
    1 -> println("It's one")
    2 -> println("It's two")
    else -> println("Another number")
}

// 4. Loops
// Used when we want to repeat a block of code multiple times.

for (i in 1..5) {
    println(i)  // Will print 1, 2, 3, 4, 5
}

var j = 1
while (j <= 5) {
    println(j)  // Will print 1, 2, 3, 4, 5
    j++         // Increments the value of j
}

var k = 1
do {
    println(k)  // Will print 1, 2, 3, 4, 5
    k++
} while (k <= 5)

// 5. Functions (Methods)
// Functions are used to organize and reuse code blocks.

fun greet() {
    println("Hello, welcome!")
}

fun add(a: Int, b: Int): Int {
    return a + b  // Returns the sum of two numbers
}

greet()  // Calls the greet function
val sumResult = add(5, 3)  // Calls the add function
println("Sum result: $sumResult")

// 6. Input and Output
// Used to interact with the user, capturing inputs and displaying outputs.

fun inputOutput() {
    print("Enter your name: ")
    val name = readLine()  // Captures the user's name
    println("Hello, $name")
}

// 7. String Manipulation
// Strings are sequences of characters, useful for working with text.

fun stringManipulation() {
    val name = "João"
    val greeting = "Hello, $name!"  // Concatenating strings
    println(greeting)  // Prints: Hello, João!

    val word = "programming"
    val length = word.length  // Checks the length of the string
    val contains = word.contains("gram")  // Checks if the word contains "gram"
    println("Word length: $length")
    println("Contains 'gram': $contains")
}

// 8. Arrays
// Arrays are used to store multiple values of the same type in a single variable.

fun arrayExample() {
    val numbers = arrayOf(1, 2, 3, 4, 5)  // Declaring and initializing an array
    println("First number: ${numbers[0]}")  // Accesses the first value
    println("Last number: ${numbers[numbers.size - 1]}")  // Accesses the last value
}

// 9. Classes and Objects
// Creating a class and instantiating objects of it.

class Person(val name: String, val age: Int) {
    fun introduce() {
        println("Hello, my name is $name and I am $age years old.")
    }
}

fun classObjectExample() {
    val person1 = Person("Nico", 30)  // Creating an object of the Person class
    person1.introduce()  // Calls the method
}

// 10. Concept of `this`
// `this` is used to refer to the current object within a class method.

fun exampleThis() {
    class Car(val model: String) {
        fun showModel() {
            println("Car model: $model")
        }
    }

    val car = Car("Beetle")
    car.showModel()  // Prints: Car model: Beetle
}

// 11. Inheritance
// Creating a child class that inherits from a parent class.

open class Animal(val name: String) {
    open fun makeSound() {
        println("The animal makes a sound.")
    }
}

class Dog(name: String) : Animal(name) {
    override fun makeSound() {
        println("The dog barks.")
    }
}

fun inheritanceExample() {
    val dog = Dog("Rex")
    dog.makeSound()  // Calls the overridden method
}

// 12. Encapsulation
// Using access modifiers to protect data.

fun encapsulationExample() {
    class BankAccount {
        private var balance = 0  // Private attribute

        fun deposit(amount: Int) {
            if (amount > 0) {
                balance += amount
            }
        }

        fun getBalance(): Int {
            return balance  // Accesses the balance via a public method
        }
    }

    val account = BankAccount()
    account.deposit(500)
    println("Account balance: ${account.getBalance()}")
}

// 13. Exceptions
// Handling errors during program execution.

fun exceptionExample() {
    try {
        val result = 10 / 0  // Division by zero
    } catch (e: ArithmeticException) {
        println("Error: ${e.message}")
    }
}

// 14. Working with ArrayList
// The ArrayList is a collection that can grow dynamically.

fun arrayListExample() {
    val list = arrayListOf("Java", "Python", "C++")

    println("List size: ${list.size}")  // Prints the size of the list
    println("First item: ${list[0]}")   // Accesses the first item of the list
}
