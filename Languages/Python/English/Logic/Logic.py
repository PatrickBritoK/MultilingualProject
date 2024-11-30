# 1. Variables and Data Types
# Variables are like "boxes" where we store information. Each box has a specific type.

age = 25            # Integer type: stores whole numbers
height = 1.75       # Floating-point type: stores numbers with decimal points
name = "John"       # String type: stores a sequence of characters
student = True      # Boolean type: stores either True or False

print(f"Age: {age}")
print(f"Height: {height}")
print(f"Name: {name}")
print(f"Student: {student}")

# 2. Operators
# Arithmetic, comparison, and logical operators.

# Arithmetic Operators
sum_result = 10 + 5  # Addition
remainder = 10 % 3   # Modulo (remainder of division)
print(f"Sum: {sum_result}")
print(f"Remainder: {remainder}")

# Comparison Operators
is_greater = 10 > 5  # Checks if 10 is greater than 5
are_equal = 5 == 5   # Checks if 5 is equal to 5
print(f"10 > 5: {is_greater}")
print(f"5 == 5: {are_equal}")

# Logical Operators
and_condition = (10 > 5) and (5 < 10)  # 'AND' logical operator: both conditions must be true
or_condition = (10 > 5) or (5 > 10)    # 'OR' logical operator: one of the conditions must be true
print(f"AND Condition: {and_condition}")
print(f"OR Condition: {or_condition}")

# 3. Conditional Structures
# Conditions to make decisions in the program.

person_age = 20
if person_age >= 18:
    print("You are an adult.")
else:
    print("You are a minor.")

# Switch Case: an alternative to if-else when we have multiple conditions.
number = 2
if number == 1:
    print("It's one")
elif number == 2:
    print("It's two")
else:
    print("Other number")

# 4. Loops
# Used when we want to repeat a block of code multiple times.

for i in range(1, 6): 
    print(i)  # Will print 1, 2, 3, 4, 5

j = 1
while j <= 5:
    print(j)  # Will print 1, 2, 3, 4, 5
    j += 1  # Increments the value of j

k = 1
while k <= 5:
    print(k)  # Will print 1, 2, 3, 4, 5
    k += 1

# 5. Functions (Methods)
# Functions are used to organize and reuse code blocks.

def greeting():
    print("Hello, welcome!")

def add(a, b):
    return a + b  # Returns the sum of two numbers

greeting()  # Calls the greeting function
sum_result = add(5, 3)  # Calls the add function
print(f"Sum result: {sum_result}")

# 6. Input and Output
# Used to interact with the user by capturing input and displaying output.

def input_output():
    name = input("Enter your name: ")  # Captures the user's name
    print(f"Hello, {name}")

# 7. String Manipulation
# Strings are sequences of characters, useful for working with text.

def string_manipulation():
    name = "John"
    greeting = f"Hello, {name}!"  # Concatenating strings
    print(greeting)  # Displays: Hello, John!

    word = "programming"
    length = len(word)  # Checks the length of the string
    contains = "gram" in word  # Checks if the word contains "gram"
    print(f"Word length: {length}")
    print(f"Contains 'gram': {contains}")

# 8. Lists (Arrays)
# Lists are used to store multiple values in a single variable.

def example_lists():
    numbers = [1, 2, 3, 4, 5]  # Declaring and initializing a list
    print(f"First number: {numbers[0]}")  # Accesses the first value
    print(f"Last number: {numbers[-1]}")  # Accesses the last value

# 9. Classes and Objects
# Creating a class and instantiating objects from it.

class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def introduce(self):
        print(f"Hello, my name is {self.name} and I am {self.age} years old.")

def example_class_objects():
    person1 = Person("Nico", 30)  # Creating an object of the Person class
    person1.introduce()  # Calling the method

# 10. Concept of `self`
# `self` is used to refer to the current object within a method of the class.

def example_self():
    class Car:
        def __init__(self, model):
            self.model = model  # 'self' refers to the class attribute

        def show_model(self):
            print(f"Car model: {self.model}")

    car = Car("Fusca")
    car.show_model()  # Displays: Car model: Fusca

# 11. Inheritance
# Creating a child class that inherits from a parent class.

class Animal:
    def __init__(self, name):
        self.name = name

    def make_sound(self):
        print("The animal makes a sound.")

class Dog(Animal):
    def make_sound(self):
        print("The dog barks.")

def example_inheritance():
    dog = Dog("Rex")
    dog.make_sound()  # The overridden method is called

# 12. Encapsulation
# Using access modifiers to protect data.

def example_encapsulation():
    class BankAccount:
        def __init__(self):
            self.__balance = 0  # Private attribute

        def deposit(self, amount):
            if amount > 0:
                self.__balance += amount

        def get_balance(self):
            return self.__balance  # Access to balance through a public method

    account = BankAccount()
    account.deposit(500)
    print(f"Account balance: {account.get_balance()}")

# 13. Exceptions
# Handling errors during program execution.

def example_exception():
    try:
        result = 10 / 0  # Division by zero
    except Exception as e:
        print(f"Error: {str(e)}")

# 14. Working with Lists
# A list is a collection that can grow dynamically.

def example_list():
    lst = ["Java", "Python", "C++"]
    print(f"List size: {len(lst)}")  # Displays the size of the list
    print(f"First item: {lst[0]}")  # Accesses the first item in the list
