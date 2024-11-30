package main

import "fmt"

// 1. Variables and Data Types
func variablesAndTypes() {
    age := 25            // Integer type
    height := 1.75       // Float type
    name := "João"       // String type
    student := true      // Boolean type

    fmt.Println("Age:", age)
    fmt.Println("Height:", height)
    fmt.Println("Name:", name)
    fmt.Println("Student:", student)
}

// 2. Operators
func operators() {
    // Arithmetic Operators
    sum := 10 + 5   // Addition
    remainder := 10 % 3  // Modulo
    fmt.Println("Sum:", sum)
    fmt.Println("Remainder:", remainder)

    // Comparison Operators
    result := 10 > 5   // Checks if 10 is greater than 5
    equals := 5 == 5   // Checks if 5 is equal to 5
    fmt.Println("10 > 5:", result)
    fmt.Println("5 == 5:", equals)

    // Logical Operators
    andCondition := (10 > 5) && (5 < 10)   // 'AND' condition
    orCondition := (10 > 5) || (5 > 10)    // 'OR' condition
    fmt.Println("AND Condition:", andCondition)
    fmt.Println("OR Condition:", orCondition)
}

// 3. Conditional Structures
func conditionals() {
    personAge := 20
    if personAge >= 18 {
        fmt.Println("You are an adult.")
    } else {
        fmt.Println("You are a minor.")
    }

    number := 2
    switch number {
    case 1:
        fmt.Println("It's one")
    case 2:
        fmt.Println("It's two")
    default:
        fmt.Println("Other number")
    }
}

// 4. Loops
func loops() {
    for i := 1; i <= 5; i++ {
        fmt.Println(i)  // Prints 1, 2, 3, 4, 5
    }

    j := 1
    for j <= 5 {
        fmt.Println(j)  // Prints 1, 2, 3, 4, 5
        j++             // Increments j
    }

    k := 1
    for {
        fmt.Println(k)  // Prints 1, 2, 3, 4, 5
        k++
        if k > 5 {
            break
        }
    }
}

// 5. Functions
func greeting() {
    fmt.Println("Hello, welcome!")
}

func sum(a, b int) int {
    return a + b
}

// 6. Input and Output
func inputOutput() {
    var name string
    fmt.Println("Enter your name:")
    fmt.Scanln(&name)  // Captures user's name
    fmt.Println("Hello,", name)
}

// 7. String Manipulation
func stringManipulation() {
    name := "João"
    greeting := "Hello, " + name + "!"  // Concatenating strings
    fmt.Println(greeting)

    word := "programming"
    length := len(word)  // Checks the length of the string
    contains := contains(word, "gram") // Checks if the word contains "gram"
    fmt.Println("Word length:", length)
    fmt.Println("Contains 'gram':", contains)
}

func contains(s, substr string) bool {
    return len(s) >= len(substr) && (s[:len(substr)] == substr || contains(s[1:], substr))
}

// 8. Arrays
func exampleArrays() {
    numbers := [5]int{1, 2, 3, 4, 5}  // Declaring an array
    fmt.Println("First number:", numbers[0])  // Accesses the first value
    fmt.Println("Last number:", numbers[len(numbers)-1])  // Accesses the last value
}

// 9. Class and Objects
type Person struct {
    name  string
    age   int
}

func (p Person) introduce() {
    fmt.Printf("Hello, my name is %s and I am %d years old.\n", p.name, p.age)
}

func exampleClassObjects() {
    person1 := Person{"Nico", 30}  // Creating an object from the Person class
    person1.introduce()             // Calls the method
}

// 10. `this` Concept
type Car struct {
    model string
}

func (c Car) showModel() {
    fmt.Println("Car model:", c.model)
}

func exampleThis() {
    car := Car{"Beetle"}
    car.showModel()  // Displays: Car model: Beetle
}

// 11. Inheritance
type Animal struct {
    name string
}

func (a Animal) makeSound() {
    fmt.Println("The animal makes a sound.")
}

type Dog struct {
    Animal
}

func (d Dog) makeSound() {
    fmt.Println("The dog barks.")
}

func exampleInheritance() {
    dog := Dog{}
    dog.makeSound()  // Calls the overridden method
}

// 12. Encapsulation
type BankAccount struct {
    balance int
}

func (b *BankAccount) deposit(amount int) {
    if amount > 0 {
        b.balance += amount
    }
}

func (b *BankAccount) getBalance() int {
    return b.balance
}

func exampleEncapsulation() {
    account := BankAccount{}
    account.deposit(500)
    fmt.Println("Account balance:", account.getBalance())
}

// 13. Exceptions
func exampleException() {
    defer func() {
        if r := recover(); r != nil {
            fmt.Println("Error:", r)
        }
    }()

    result := 10 / 0  // Division by zero
    fmt.Println("Result:", result)
}

// 14. Working with ArrayList
func exampleArrayList() {
    list := []string{"Java", "Python", "C++"}

    fmt.Println("List size:", len(list))  // Displays the size of the list
    fmt.Println("First item:", list[0])   // Accesses the first item of the list
}

func main() {
    variablesAndTypes()
    operators()
    conditionals()
    loops()
    greeting()
    resultSum := sum(5, 3)
    fmt.Println("Sum result:", resultSum)
    inputOutput()
    stringManipulation()
    exampleArrays()
    exampleClassObjects()
    exampleThis()
    exampleInheritance()
    exampleEncapsulation()
    exampleException()
    exampleArrayList()
}
