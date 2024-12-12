# 1. Variables and Data Types
# Variables are like "boxes" where we store information. Each box has a specific type.

age = 25 # Integer type: stores whole numbers
height = 1.75 # Float type: stores numbers with decimal points
name = "João" # String type: stores a sequence of characters
student = true # Boolean type: stores true or false

puts "Age: #{age}"
puts "Height: #{height}"
puts "Name: #{name}"
puts "Student: #{student}"

# 2. Operators
# Arithmetic, comparison, and logical operators.

# Arithmetic Operators
sum = 10 + 5 # Addition
remainder = 10 % 3 # Modulo (remainder of division)
puts "Sum: #{sum}"
puts "Remainder: #{remainder}"

# Comparison Operators
result = 10 > 5 # Checks if 10 is greater than 5
equal = 5 == 5 # Checks if 5 is equal to 5
puts "10 > 5: #{result}"
puts "5 == 5: #{equal}"

# Logical Operators
and_condition = (10 > 5) && (5 < 10) # 'AND' logical: both conditions must be true
or_condition = (10 > 5) || (5 > 10) # 'OR' logical: at least one condition must be true
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

# Switch Case: alternative to if-else when there are multiple conditions
number = 2
case number
when 1
  puts "It is one"
when 2
  puts "It is two"
else
  puts "Other number"
end

# 4. Loops
# Used when we want to repeat a block of code multiple times.

for i in 1..5
  puts i # Will print 1, 2, 3, 4, 5
end

j = 1
while j <= 5
  puts j # Will print 1, 2, 3, 4, 5
  j += 1 # Increment j
end

k = 1
begin
  puts k # Will print 1, 2, 3, 4, 5
  k += 1
end while k <= 5

# 5. Functions (Methods)
# Functions are used to organize and reuse code blocks.

def greeting
  puts "Hello, welcome!"
end

def sum(a, b)
  a + b # Returns the sum of two numbers
end

greeting # Calls the greeting function
result_sum = sum(5, 3) # Calls the sum function
puts "Sum result: #{result_sum}"

# 6. Input and Output
# Used to interact with the user, capturing inputs and displaying outputs.

# Crystal doesn't have a direct `prompt` function, but we use `gets` to capture input.
def input_output
  print "Enter your name: " # Capture user's name
  name = gets.chomp
  puts "Hello, #{name}"
end

# 7. String Manipulation
# Strings are sequences of characters, useful for working with text.

def string_manipulation
  name = "João"
  greeting = "Hello, #{name}!" # Concatenating strings
  puts greeting # Displays: Hello, João!

  word = "programming"
  length = word.length # Checks the length of the string
  contains = word.includes?("gram") # Checks if the word contains "gram"
  puts "Word length: #{length}"
  puts "Contains 'gram': #{contains}"
end

# 8. Arrays
# Arrays are used to store multiple values of the same type in one variable.

def example_arrays
  numbers = [1, 2, 3, 4, 5] # Declaration and initialization of an array
  puts "First number: #{numbers[0]}" # Access the first value
  puts "Last number: #{numbers[-1]}" # Access the last value
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

def example_class_objects
  person1 = Person.new("Nico", 30) # Create an object of the Person class
  person1.introduce # Calls the method
end

# 10. Concept of `this`
# `this` is used to refer to the current object inside a class method.

def example_this
  class Car
    def initialize(model)
      @model = model # 'this' in Crystal is represented by '@'
    end

    def show_model
      puts "Car model: #{@model}"
    end
  end

  car = Car.new("Beetle")
  car.show_model # Displays: Car model: Beetle
end

# 11. Inheritance
# Creating a child class that inherits from a parent class.

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

def example_inheritance
  dog = Dog.new("Rex")
  dog.make_sound # The overridden method is called
end

# 12. Encapsulation
# Using access modifiers to protect data.

def example_encapsulation
  class BankAccount
    private
    @balance = 0 # Private attribute

    def deposit(amount)
      if amount > 0
        @balance += amount
      end
    end

    def get_balance
      @balance # Access balance through a public method
    end
  end

  account = BankAccount.new
  account.deposit(500)
  puts "Account balance: #{account.get_balance}"
end

# 13. Exceptions
# Handling errors during the program execution.

def example_exception
  begin
    result = 10 / 0 # Division by zero
  rescue e : DivisionByZeroError
    puts "Error: #{e.message}"
  end
end

# 14. Working with ArrayList
# The ArrayList is a collection that can grow dynamically.

def example_arraylist
  list = ["Java", "Python", "C++"]

  puts "List size: #{list.size}" # Displays the size of the list
  puts "First item: #{list[0]}" # Accesses the first item in the list
end
