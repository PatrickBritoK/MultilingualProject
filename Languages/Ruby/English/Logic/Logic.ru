# 1. Variables and Data Types
# Variables are like "boxes" where we store information. Each box has a specific type.

age = 25            # Integer type: stores whole numbers
height = 1.75       # Float type: stores numbers with decimal places
name = "João"       # String type: stores a sequence of characters
student = true      # Boolean type: stores true or false

puts "Age: #{age}"
puts "Height: #{height}"
puts "Name: #{name}"
puts "Student: #{student}"

# 2. Operators
# Arithmetic, comparison, and logical operators.

# Arithmetic Operators
sum = 10 + 5  # Addition
remainder = 10 % 3 # Modulo (remainder of division)
puts "Sum: #{sum}"
puts "Remainder: #{remainder}"

# Comparison Operators
result = 10 > 5  # Checks if 10 is greater than 5
equal = 5 == 5    # Checks if 5 is equal to 5
puts "10 > 5: #{result}"
puts "5 == 5: #{equal}"

# Logical Operators
and_condition = (10 > 5) && (5 < 10)  # Logical AND: both conditions must be true
or_condition = (10 > 5) || (5 > 10)   # Logical OR: one of the conditions must be true
puts "AND Condition: #{and_condition}"
puts "OR Condition: #{or_condition}"

# 3. Conditional Statements
# Conditions to make decisions in the program.

person_age = 20
if person_age >= 18
    puts "You are an adult."
else
    puts "You are a minor."
end

# Switch Case: alternative to if-else when we have multiple possible conditions
number = 2
case number
when 1
    puts "It's one"
when 2
    puts "It's two"
else
    puts "Another number"
end

# 4. Loops
# Used when we want to repeat a block of code multiple times.

(1..5).each do |i|
    puts i  # Prints 1, 2, 3, 4, 5
end

j = 1
while j <= 5
    puts j  # Prints 1, 2, 3, 4, 5
    j += 1  # Increments the value of j
end

k = 1
begin
    puts k  # Prints 1, 2, 3, 4, 5
    k += 1
end while k <= 5

# 5. Functions (Methods)
# Functions are used to organize and reuse blocks of code.

def greeting
    puts "Hello, welcome!"
end

def sum(a, b)
    a + b  # Returns the sum of the two numbers
end

greeting  # Calls the greeting function
result_sum = sum(5, 3)  # Calls the sum function
puts "Sum result: #{result_sum}"

# 6. Input and Output
# Used to interact with the user by capturing inputs and displaying outputs.

def input_output
    print "Enter your name: "
    name = gets.chomp  # Captures the user's name
    puts "Hello, #{name}"
end

# 7. String Manipulation
# Strings are sequences of characters, useful for working with text.

def string_manipulation
    name = "João"
    greeting = "Hello, #{name}!"  # Concatenating strings
    puts greeting  # Displays: Hello, João!

    word = "programming"
    size = word.length  # Checks the size of the string
    contains = word.include?("gram")  # Checks if the word contains "gram"
    puts "Word length: #{size}"
    puts "Contains 'gram': #{contains}"
end

# 8. Arrays
# Arrays are used to store multiple values of the same type in a single variable.

def array_example
    numbers = [1, 2, 3, 4, 5]  # Declaration and initialization of an array
    puts "First number: #{numbers[0]}"  # Accesses the first value
    puts "Last number: #{numbers[-1]}"  # Accesses the last value
end

# 9. Classes and Objects
# Creating a class and instantiating objects from it.

class Person
    def initialize(name, age)
        @name = name
        @age = age
    end

    def introduce
        puts "Hello, my name is #{@name} and I am #{@age} years old."
    end
end

def class_objects_example
    person1 = Person.new("Nico", 30)  # Creates an object of the Person class
    person1.introduce  # Calls the method
end

# 10. Concept of `this`
# In Ruby, `this` is replaced by `self` to refer to the current object inside a class method.

def self_example
    class Car
        def initialize(model)
            @model = model  # 'self' refers to the class attribute
        end

        def show_model
            puts "Car model: #{@model}"
        end
    end

    car = Car.new("Fusca")
    car.show_model  # Displays: Car model: Fusca
end

# 11. Inheritance
# Creating a subclass that inherits from a superclass.

class Animal
    def initialize(name)
        @name = name
    end

    def make_sound
        puts "The animal makes a sound."
    end
end

class Dog < Animal
    def make_sound
        puts "The dog barks."
    end
end

def inheritance_example
    dog = Dog.new("Rex")
    dog.make_sound  # Calls the overridden method
end

# 12. Encapsulation
# Using access modifiers to protect data.

def encapsulation_example
    class BankAccount
        def initialize
            @balance = 0
        end

        def deposit(amount)
            @balance += amount if amount > 0
        end

        def balance
            @balance  # Access to balance through a public method
        end
    end

    account = BankAccount.new
    account.deposit(500)
    puts "Account balance: #{account.balance}"
end

# 13. Exceptions
# Handling errors during program execution.

def exception_example
    begin
        result = 10 / 0  # Division by zero
    rescue StandardError => e
        puts "Error: #{e.message}"
    end
end

# 14. Working with `ArrayList`
# In Ruby, we use Arrays for dynamic list structures.

def array_list_example
    list = ["Java", "Python", "C++"]

    puts "List size: #{list.length}"  # Displays the size of the list
    puts "First item: #{list[0]}"  # Accesses the first item in the list
end
