#include <stdio.h>
#include <string.h>
#include <stdbool.h>

// Function to display the greeting
void greeting() {
    printf("Hello, welcome!\n");
}

// Sum function
int sum(int a, int b) {
    return a + b;
}

// String manipulation function
void stringManipulation() {
    char name[] = "João";
    char greetingMessage[50];
    sprintf(greetingMessage, "Hello, %s!", name);  // Concatenating strings
    printf("%s\n", greetingMessage);  // Displays: Hello, João!

    char word[] = "programming";
    int length = strlen(word);  // Checks the length of the string
    int contains = strstr(word, "gram") != NULL;  // Checks if the word contains "gram"
    printf("Word length: %d\n", length);
    printf("Contains 'gram': %d\n", contains);
}

// Array example function
void arrayExample() {
    int numbers[] = {1, 2, 3, 4, 5};  // Declaration and initialization of an array
    printf("First number: %d\n", numbers[0]);  // Accesses the first value
    printf("Last number: %d\n", numbers[sizeof(numbers)/sizeof(numbers[0]) - 1]);  // Accesses the last value
}

// Input and output function
void inputOutput() {
    char name[50];
    printf("Enter your name: ");
    fgets(name, sizeof(name), stdin);
    name[strcspn(name, "\n")] = '\0';  // Removes the newline from the string
    printf("Hello, %s\n", name);
}

// Class and object example function (using structs)
typedef struct {
    char name[50];
    int age;
} Person;

// Presentation method
void introduce(Person *person) {
    printf("Hello, my name is %s and I am %d years old.\n", person->name, person->age);
}

// Example of 'this' function (using pointers)
void exampleThis() {
    typedef struct {
        char model[50];
    } Car;

    Car car = {"Beetle"};
    printf("Car model: %s\n", car.model);
}

// Inheritance function (simulated with structs and pointers)
typedef struct {
    char name[50];
} Animal;

void makeAnimalSound(Animal *animal) {
    printf("The animal makes a sound.\n");
}

typedef struct {
    Animal base;  // Inheriting from Animal
} Dog;

void makeDogSound(Dog *dog) {
    printf("The dog barks.\n");
}

// Encapsulation example function (simulated with functions)
typedef struct {
    int balance;
} BankAccount;

void deposit(BankAccount *account, int amount) {
    if (amount > 0) {
        account->balance += amount;
    }
}

int getBalance(BankAccount *account) {
    return account->balance;
}

// Exception example function (simulated with an if for division by zero)
void exceptionExample() {
    int result;
    if (0 != 0) {
        printf("Error: Division by zero\n");
    } else {
        result = 10 / 0;  // Division by zero
    }
}

int main() {
    // 1. Variables and Data Types
    int age = 25;  // Integer type
    float height = 1.75;  // Float type
    char name[] = "João";  // String type
    bool student = true;  // Boolean type

    printf("Age: %d\n", age);
    printf("Height: %.2f\n", height);
    printf("Name: %s\n", name);
    printf("Student: %s\n", student ? "True" : "False");

    // 2. Operators
    int sumResult = 10 + 5;  // Addition
    int remainder = 10 % 3;  // Modulo
    printf("Sum: %d\n", sumResult);
    printf("Remainder: %d\n", remainder);

    bool comparisonResult = 10 > 5;  // Greater than
    bool equality = 5 == 5;  // Equality
    printf("10 > 5: %s\n", comparisonResult ? "True" : "False");
    printf("5 == 5: %s\n", equality ? "True" : "False");

    bool andCondition = (10 > 5) && (5 < 10);  // Logical 'AND'
    bool orCondition = (10 > 5) || (5 > 10); // Logical 'OR'
    printf("AND Condition: %s\n", andCondition ? "True" : "False");
    printf("OR Condition: %s\n", orCondition ? "True" : "False");

    // 3. Conditional Structures
    int personAge = 20;
    if (personAge >= 18) {
        printf("You are an adult.\n");
    } else {
        printf("You are a minor.\n");
    }

    // 4. Loops
    for (int i = 1; i <= 5; i++) {
        printf("%d\n", i);
    }

    int j = 1;
    while (j <= 5) {
        printf("%d\n", j);
        j++;
    }

    int k = 1;
    do {
        printf("%d\n", k);
        k++;
    } while (k <= 5);

    // 5. Functions
    greeting();
    int sumResultFunction = sum(5, 3);
    printf("Sum result: %d\n", sumResultFunction);

    // 6. Input and Output
    inputOutput();

    // 7. String Manipulation
    stringManipulation();

    // 8. Arrays
    arrayExample();

    // 9. Class and Objects
    Person person1 = {"Maria", 30};
    introduce(&person1);

    // 10. Concept of `this`
    exampleThis();

    // 11. Inheritance
    Dog dog = {{"Rex"}};
    makeDogSound(&dog);

    // 12. Encapsulation
    BankAccount account = {0};
    deposit(&account, 500);
    printf("Account balance: %d\n", getBalance(&account));

    // 13. Exceptions
    exceptionExample();

    return 0;
}
