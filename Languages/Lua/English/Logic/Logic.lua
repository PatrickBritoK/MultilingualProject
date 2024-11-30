-- 1. Variables and Data Types
-- Variables are like "boxes" where we store information. Each box has a specific type.

age = 25            -- Integer type: stores whole numbers
height = 1.75       -- Floating-point type: stores numbers with decimal places
name = "John"       -- String type: stores a sequence of characters
student = true      -- Boolean type: stores true or false

print("Age: " .. age)
print("Height: " .. height)
print("Name: " .. name)
print("Student: " .. tostring(student))

-- 2. Operators
-- Arithmetic, comparison, and logical operators.

-- Arithmetic Operators
sum = 10 + 5  -- Addition
remainder = 10 % 3 -- Modulo (remainder of division)
print("Sum: " .. sum)
print("Remainder: " .. remainder)

-- Comparison Operators
result = 10 > 5  -- Checks if 10 is greater than 5
equal = 5 == 5   -- Checks if 5 is equal to 5
print("10 > 5: " .. tostring(result))
print("5 == 5: " .. tostring(equal))

-- Logical Operators
andCondition = (10 > 5) and (5 < 10)  -- 'AND' logical: both conditions must be true
orCondition = (10 > 5) or (5 > 10)    -- 'OR' logical: at least one condition must be true
print("AND condition: " .. tostring(andCondition))
print("OR condition: " .. tostring(orCondition))

-- 3. Conditional Structures
-- Conditions to make decisions in the program.

personAge = 20
if personAge >= 18 then
    print("You are an adult.")
else
    print("You are a minor.")
end

-- Switch Case: an alternative to if-else when there are multiple possible conditions
number = 2
if number == 1 then
    print("It is one")
elseif number == 2 then
    print("It is two")
else
    print("Another number")
end

-- 4. Loops
-- Used when we want to repeat a block of code multiple times.

for i = 1, 5 do
    print(i)  -- Prints 1, 2, 3, 4, 5
end

j = 1
while j <= 5 do
    print(j)  -- Prints 1, 2, 3, 4, 5
    j = j + 1  -- Increments the value of j
end

k = 1
repeat
    print(k)  -- Prints 1, 2, 3, 4, 5
    k = k + 1
until k > 5

-- 5. Functions (Methods)
-- Functions are used to organize and reuse blocks of code.

function greeting()
    print("Hello, welcome!")
end

function sum(a, b)
    return a + b  -- Returns the sum of two numbers
end

greeting()  -- Calls the greeting function
sumResult = sum(5, 3)  -- Calls the sum function
print("Sum result: " .. sumResult)

-- 6. Input and Output
-- Used to interact with the user, capturing inputs and displaying outputs.

function inputOutput()
    io.write("Enter your name: ")  -- Captures the user's name
    name = io.read()
    print("Hello, " .. name)
end

-- 7. String Manipulation
-- Strings are sequences of characters, useful for working with text.

function stringManipulation()
    name = "John"
    greetingMessage = "Hello, " .. name .. "!"  -- Concatenating strings
    print(greetingMessage)  -- Displays: Hello, John!

    word = "programming"
    length = #word  -- Gets the length of the string
    contains = string.find(word, "gram") ~= nil  -- Checks if the word contains "gram"
    print("Word length: " .. length)
    print("Contains 'gram': " .. tostring(contains))
end

-- 8. Arrays
-- Arrays are used to store multiple values of the same type in a single variable.

function arrayExample()
    numbers = {1, 2, 3, 4, 5}  -- Array declaration and initialization
    print("First number: " .. numbers[1])  -- Accesses the first value
    print("Last number: " .. numbers[#numbers])  -- Accesses the last value
end

-- 9. Classes and Objects
-- Creating a class and instantiating objects from it.

Person = {}
Person.__index = Person

function Person:new(name, age)
    local person = setmetatable({}, self)
    person.name = name
    person.age = age
    return person
end

function Person:introduce()
    print("Hello, my name is " .. self.name .. " and I am " .. self.age .. " years old.")
end

function classObjectExample()
    person1 = Person:new("Nick", 30)  -- Creating an object of the Person class
    person1:introduce()  -- Calling the method
end

-- 10. Concept of `self`
-- `self` is used to refer to the current object inside a class method.

function selfExample()
    Car = {}
    Car.__index = Car

    function Car:new(model)
        local car = setmetatable({}, self)
        car.model = model
        return car
    end

    function Car:showModel()
        print("Car model: " .. self.model)
    end

    car = Car:new("Beetle")
    car:showModel()  -- Displays: Car model: Beetle
end

-- 11. Inheritance
-- Creating a child class that inherits from a parent class.

Animal = {}
Animal.__index = Animal

function Animal:new(name)
    local animal = setmetatable({}, self)
    animal.name = name
    return animal
end

function Animal:makeSound()
    print("The animal makes a sound.")
end

Dog = setmetatable({}, Animal)
Dog.__index = Dog

function Dog:makeSound()
    print("The dog barks.")
end

function inheritanceExample()
    dog = Dog:new("Rex")
    dog:makeSound()  -- Calls the overridden method
end

-- 12. Encapsulation
-- Using access modifiers to protect data.

function encapsulationExample()
    BankAccount = {}
    BankAccount.__index = BankAccount

    function BankAccount:new()
        local account = setmetatable({}, self)
        account._balance = 0  -- Private attribute
        return account
    end

    function BankAccount:deposit(amount)
        if amount > 0 then
            self._balance = self._balance + amount
        end
    end

    function BankAccount:getBalance()
        return self._balance  -- Access the balance through a public method
    end

    account = BankAccount:new()
    account:deposit(500)
    print("Account balance: " .. account:getBalance())
end

-- 13. Exceptions
-- Handling errors during program execution.

function exceptionExample()
    pcall(function()
        result = 10 / 0  -- Division by zero
    end)
end

-- 14. Working with `ArrayList`
-- The ArrayList is a collection that can dynamically grow.

function arrayListExample()
    list = {"Java", "Python", "C++"}

    print("List size: " .. #list)  -- Displays the list size
    print("First item: " .. list[1])  -- Accesses the first item of the list
end
