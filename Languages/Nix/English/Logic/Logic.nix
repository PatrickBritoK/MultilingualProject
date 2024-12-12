# 1. Variables and Data Types
# Defining variables in Nix

let
  age = 25;
  height = 1.75;
  name = "John";
  isStudent = true;

in
  # Nix doesn't have `console.log`, but we can return values.
  "Age: ${age}, Height: ${height}, Name: ${name}, Student: ${isStudent}"

# 2. Operators
# Nix supports basic arithmetic operators like addition and modulus.

let
  sum = 10 + 5;
  remainder = 10 % 3;
in
  "Sum: ${sum}, Remainder: ${remainder}"

# 3. Conditionals
# Nix uses if-then-else for conditionals

let
  personAge = 20;
  condition = if personAge >= 18 then "You are an adult." else "You are a minor.";
in
  condition

# 4. Functions
# Defining functions in Nix

let
  greeting = "Hello, welcome!";
  sum = a: b: a + b;  # Function to add two values
in
  {
    greeting = greeting;
    sumResult = sum 5 3;
  }

# 5. String Manipulation
# Nix can perform basic string manipulation

let
  name = "John";
  greeting = "Hello, ${name}!";
  word = "programming";
  length = builtins.length word;
  contains = builtins.elem "gram" (builtins.splitString " " word);  # Check if "gram" is in the word
in
  {
    greeting = greeting;
    length = length;
    contains = contains;
  }

# 6. Arrays
# In Nix, arrays are lists

let
  numbers = [1 2 3 4 5];
in
  {
    firstNumber = head numbers;  # Access the first number
    lastNumber = last numbers;  # Access the last number
  }

# 7. Objects
# In Nix, we can simulate objects using attributes in lists

let
  person = {
    name = "Nico";
    age = 30;
  };
in
  "Hello, my name is ${person.name} and I am ${person.age} years old."

# 8. Inheritance
# Nix doesn't have inheritance, but we can simulate behaviors using functions and attributes

let
  Animal = { name }: {
    name = name;
    makeSound = "The animal makes a sound.";
  };
  Dog = Animal // { makeSound = "The dog barks." };
in
  Dog.makeSound

# 9. Exceptions
# Nix doesn't have explicit exceptions like JavaScript, but we can use `try` to catch errors in a limited way

let
  result = try (10 / 0) or "Error in operation";
in
  result
