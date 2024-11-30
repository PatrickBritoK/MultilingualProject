#include <iostream> // Standard library for input and output
#include <vector>   // Library for handling vectors
#include <string>   // Library for handling strings

using namespace std; // Simplifies the use of standard classes and functions, avoiding "std::"

// 1. Variable declarations and data types
int age = 25;            // Integer variable
double height = 1.75;    // Floating-point variable (decimal)
string name = "João";    // String variable (text)
bool student = true;     // Boolean variable (true/false)

int main() {
    // Displaying variable values
    cout << "Age: " << age << endl;          // Displays the age
    cout << "Height: " << height << endl;    // Displays the height
    cout << "Name: " << name << endl;        // Displays the name
    cout << "Student: " << (student ? "true" : "false") << endl; // Displays if the person is a student

    // 2. Operators

    // Arithmetic operators
    int sum = 10 + 5;       // Addition
    int remainder = 10 % 3; // Modulus (remainder of division)
    cout << "Sum: " << sum << endl;          // Displays the result of addition
    cout << "Remainder: " << remainder << endl; // Displays the remainder of division

    // Comparison operators
    bool result = 10 > 5;    // Checks if 10 is greater than 5
    bool equals = 5 == 5;    // Checks if 5 is equal to 5
    cout << "10 > 5: " << (result ? "true" : "false") << endl;
    cout << "5 == 5: " << (equals ? "true" : "false") << endl;

    // Logical operators
    bool andCondition = (10 > 5) && (5 < 10);  // Logical "AND" operator
    bool orCondition = (10 > 5) || (5 > 10);   // Logical "OR" operator
    cout << "AND Condition: " << (andCondition ? "true" : "false") << endl;
    cout << "OR Condition: " << (orCondition ? "true" : "false") << endl;

    // 3. Conditional structures
    int personAge = 20;
    if (personAge >= 18) { // Checks if the person is an adult
        cout << "You are an adult." << endl;
    } else {
        cout << "You are a minor." << endl;
    }

    // Switch Case
    int number = 2;
    switch (number) {
        case 1:
            cout << "It's one" << endl;
            break; // Exits the switch
        case 2:
            cout << "It's two" << endl;
            break;
        default:
            cout << "Another number" << endl; // Default case
    }

    // 4. Loops

    // For loop
    for (int i = 1; i <= 5; i++) { // Repeats from 1 to 5
        cout << i << endl;
    }

    // While loop
    int j = 1;
    while (j <= 5) { // Executes while j <= 5
        cout << j << endl;
        j++; // Increments j
    }

    // Do-while loop
    int k = 1;
    do { // Executes at least once
        cout << k << endl;
        k++;
    } while (k <= 5);

    // 5. Functions (using lambdas for simplicity)
    auto greeting = []() { // Function that displays a greeting
        cout << "Hello, welcome!" << endl;
    };
    greeting();

    auto addFunction = [](int a, int b) { // Function that adds two numbers
        return a + b;
    };
    int addResult = addFunction(5, 3);
    cout << "Addition result: " << addResult << endl;

    // 6. Input and output
    string inputName;
    cout << "Enter your name: "; // Requests user input
    cin >> inputName;
    cout << "Hello, " << inputName << endl;

    // 7. String manipulation
    string greetingStr = "Hello, " + name + "!"; // Concatenates strings
    cout << greetingStr << endl;

    string word = "programming";
    int size = word.length();                   // Gets the string size
    bool contains = word.find("gram") != string::npos; // Checks if it contains "gram"
    cout << "Word size: " << size << endl;
    cout << "Contains 'gram': " << (contains ? "true" : "false") << endl;

    // 8. Vectors (dynamic arrays)
    vector<int> numbers = {1, 2, 3, 4, 5}; // Creates a vector of integers
    cout << "First number: " << numbers[0] << endl;          // First element
    cout << "Last number: " << numbers[numbers.size() - 1] << endl; // Last element

    // 9. Class and objects
    class Person {
    public:
        string name;
        int age;
        Person(string name, int age) : name(name), age(age) {}
        void introduce() {
            cout << "Hi, my name is " << name << " and I am " << age << " years old." << endl;
        }
    };

    Person person1("Nico", 30);
    person1.introduce();

    // 10. Concept of `this`
    class Car {
    public:
        string model;
        Car(string model) : model(model) {}
        void showModel() {
            cout << "Car model: " << model << endl;
        }
    };

    Car car("Beetle");
    car.showModel();

    // 11. Inheritance
    class Animal {
    public:
        string name;
        Animal(string name) : name(name) {}
        virtual void makeSound() {
            cout << "The animal makes a sound." << endl;
        }
    };

    class Dog : public Animal {
    public:
        Dog(string name) : Animal(name) {}
        void makeSound() override {
            cout << "The dog barks." << endl;
        }
    };

    Dog dog("Rex");
    dog.makeSound();

    // 12. Encapsulation
    class BankAccount {
    private:
        double balance;
    public:
        BankAccount() : balance(0) {}
        void deposit(double amount) {
            if (amount > 0) balance += amount;
        }
        double getBalance() {
            return balance;
        }
    };

    BankAccount account;
    account.deposit(500);
    cout << "Account balance: " << account.getBalance() << endl;

    // 13. Exceptions
    try {
        int result = 10 / 0; // Division by zero (throws error)
    } catch (const exception& e) {
        cout << "Error: " << e.what() << endl;
    }

    // 14. Working with dynamic vectors
    vector<string> list = {"Java", "Python", "C++"};
    cout << "List size: " << list.size() << endl;
    cout << "First item: " << list[0] << endl;

    return 0; // Exits the program successfully
}
