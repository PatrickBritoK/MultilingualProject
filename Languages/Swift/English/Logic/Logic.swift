// 1. Variables and Data Types
let age = 25            // Integer type: stores whole numbers
let height = 1.75       // Float type: stores numbers with decimals
let name = "John"       // String type: stores a sequence of characters
let isStudent = true    // Boolean type: stores true or false

print("Age: \(age)")
print("Height: \(height)")
print("Name: \(name)")
print("Student: \(isStudent)")

// 2. Operators
let sum = 10 + 5  // Addition
let remainder = 10 % 3 // Modulo (remainder of division)
print("Sum: \(sum)")
print("Remainder: \(remainder)")

// Comparison Operators
let isGreaterThan = 10 > 5  // Checks if 10 is greater than 5
let areEqual = 5 == 5       // Checks if 5 is equal to 5
print("10 > 5: \(isGreaterThan)")
print("5 == 5: \(areEqual)")

// Logical Operators
let andCondition = (10 > 5) && (5 < 10)  // Logical AND: both conditions must be true
let orCondition = (10 > 5) || (5 > 10)   // Logical OR: at least one condition must be true
print("AND Condition: \(andCondition)")
print("OR Condition: \(orCondition)")

// 3. Conditional Structures
let personAge = 20
if personAge >= 18 {
    print("You are an adult.")
} else {
    print("You are a minor.")
}

// Switch Case
let number = 2
switch number {
case 1:
    print("It is one")
case 2:
    print("It is two")
default:
    print("Another number")
}

// 4. Loops (Iteration)
for i in 1...5 {
    print(i)  // Prints 1, 2, 3, 4, 5
}

var j = 1
while j <= 5 {
    print(j)  // Prints 1, 2, 3, 4, 5
    j += 1    // Increments the value of j
}

var k = 1
repeat {
    print(k)  // Prints 1, 2, 3, 4, 5
    k += 1
} while k <= 5

// 5. Functions (Methods)
func greet() {
    print("Hello, welcome!")
}

func add(a: Int, b: Int) -> Int {
    return a + b  // Returns the sum of the two numbers
}

greet()  // Calls the greet function
let sumResult = add(a: 5, b: 3)  // Calls the add function
print("Sum result: \(sumResult)")

// 6. Input and Output
func inputOutput() {
    print("Enter your name: ")
    if let name = readLine() {
        print("Hello, \(name)")
    }
}

// 7. String Manipulation
func stringManipulation() {
    let name = "John"
    let greeting = "Hello, \(name)!"  // Concatenating strings
    print(greeting)  // Prints: Hello, John!

    let word = "programming"
    let length = word.count  // Checks the length of the string
    let contains = word.contains("gram")  // Checks if the word contains "gram"
    print("Word length: \(length)")
    print("Contains 'gram': \(contains)")
}

// 8. Arrays
func arrayExample() {
    let numbers = [1, 2, 3, 4, 5]  // Declaration and initialization of an array
    print("First number: \(numbers[0])")  // Accesses the first value
    print("Last number: \(numbers[numbers.count - 1])")  // Accesses the last value
}

// 9. Classes and Objects
class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func introduce() {
        print("Hello, my name is \(self.name) and I am \(self.age) years old.")
    }
}

func classObjectExample() {
    let person1 = Person(name: "Nico", age: 30)  // Creating an object of the Person class
    person1.introduce()  // Calls the method
}

// 10. The `self` Concept
func selfExample() {
    class Car {
        var model: String

        init(model: String) {
            self.model = model  // 'self' refers to the class attribute
        }

        func showModel() {
            print("Car model: \(self.model)")
        }
    }

    let car = Car(model: "Beetle")
    car.showModel()  // Prints: Car model: Beetle
}

// 11. Inheritance
class Animal {
    var name: String

    init(name: String) {
        self.name = name
    }

    func makeSound() {
        print("The animal makes a sound.")
    }
}

class Dog: Animal {
    override func makeSound() {
        print("The dog barks.")
    }
}

func inheritanceExample() {
    let dog = Dog(name: "Rex")
    dog.makeSound()  // The overridden method is called
}

// 12. Encapsulation
func encapsulationExample() {
    class BankAccount {
        private var balance: Double  // Private attribute

        init() {
            self.balance = 0
        }

        func deposit(amount: Double) {
            if amount > 0 {
                self.balance += amount
            }
        }

        func getBalance() -> Double {
            return self.balance  // Access to balance through a public method
        }
    }

    let account = BankAccount()
    account.deposit(amount: 500)
    print("Account balance: \(account.getBalance())")
}

// 13. Exceptions
func exceptionExample() {
    do {
        let result = 10 / 0  // Division by zero
    } catch {
        print("Error: \(error)")
    }
}

// 14. Working with Arrays
func arrayListExample() {
    var list = ["Java", "Python", "C++"]

    print("List size: \(list.count)")  // Displays the size of the list
    print("First item: \(list[0])")  // Accesses the first item of the list
}
