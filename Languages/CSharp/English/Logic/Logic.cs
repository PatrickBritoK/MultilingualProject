using System; // Imports the System namespace, which contains basic classes like Console.
using System.Collections.Generic; // Imports the namespace for working with lists and collections.

class Program
{
    static void Main()
    {
        // Variables of different types
        int age = 25;             // Stores an integer.
        double height = 1.75;     // Stores a number with decimal places.
        string name = "John";     // Stores text.
        bool isStudent = true;    // Stores a boolean value (true/false).

        Console.WriteLine("Age: " + age);
        Console.WriteLine("Height: " + height);
        Console.WriteLine("Name: " + name);
        Console.WriteLine("Student: " + isStudent);

        // Mathematical and logical operations
        int sum = 10 + 5;          // Sum of two integers.
        int remainder = 10 % 3;    // Remainder of the division of 10 by 3.
        Console.WriteLine("Sum: " + sum);
        Console.WriteLine("Remainder: " + remainder);

        bool result = 10 > 5;      // Checks if 10 is greater than 5.
        bool equals = 5 == 5;      // Checks if 5 is equal to 5.
        Console.WriteLine("10 > 5: " + result);
        Console.WriteLine("5 == 5: " + equals);

        bool andCondition = (10 > 5) && (5 < 10);  // Logical AND.
        bool orCondition = (10 > 5) || (5 > 10);   // Logical OR.
        Console.WriteLine("AND Condition: " + andCondition);
        Console.WriteLine("OR Condition: " + orCondition);

        // Conditional structures
        int personAge = 20;
        if (personAge >= 18)
        {
            Console.WriteLine("You are an adult.");
        }
        else
        {
            Console.WriteLine("You are a minor.");
        }

        // Switch case structure
        int number = 2;
        switch (number)
        {
            case 1:
                Console.WriteLine("It's one");
                break;
            case 2:
                Console.WriteLine("It's two");
                break;
            default:
                Console.WriteLine("Another number");
                break;
        }

        // Loops
        for (int i = 1; i <= 5; i++) // For loop: runs 5 times.
        {
            Console.WriteLine(i);
        }

        int j = 1;
        while (j <= 5) // While loop: runs while the condition is true.
        {
            Console.WriteLine(j);
            j++;
        }

        int k = 1;
        do // Do-while: runs at least once before checking the condition.
        {
            Console.WriteLine(k);
            k++;
        } while (k <= 5);

        // Functions (methods)
        Greeting(); // Method to display a greeting message.
        int sumResult = Sum(5, 3); // Calls the Sum function and stores the result.
        Console.WriteLine("Sum result: " + sumResult);

        // Input and output
        Console.WriteLine("Enter your name: ");
        string userName = Console.ReadLine(); // Reads the user's name.
        Console.WriteLine("Hello, " + userName);

        // Additional methods
        StringManipulation();
        ArrayExample();
        ClassObjectsExample();
        ThisExample();
        InheritanceExample();
        EncapsulationExample();
        ExceptionExample();
        ArrayListExample();
    }

    // Simple greeting method
    static void Greeting()
    {
        Console.WriteLine("Hello, welcome!");
    }

    // Method that returns the sum of two integers
    static int Sum(int a, int b)
    {
        return a + b;
    }

    // Method for string manipulation
    static void StringManipulation()
    {
        string name = "John";
        string greeting = "Hello, " + name + "!";
        Console.WriteLine(greeting);

        string word = "programming";
        int length = word.Length; // Gets the length of the string.
        bool contains = word.Contains("gram"); // Checks if it contains the word "gram".
        Console.WriteLine("Word length: " + length);
        Console.WriteLine("Contains 'gram': " + contains);
    }

    // Method that demonstrates arrays usage
    static void ArrayExample()
    {
        int[] numbers = { 1, 2, 3, 4, 5 };
        Console.WriteLine("First number: " + numbers[0]);
        Console.WriteLine("Last number: " + numbers[numbers.Length - 1]);
    }

    // Demonstrating classes and objects
    static void ClassObjectsExample()
    {
        Person person1 = new Person("Nick", 30); // Creates a Person object.
        person1.Introduce(); // Calls the Introduce method.
    }

    // Demonstrating the use of 'this'
    static void ThisExample()
    {
        Car car = new Car("Beetle"); // Creates a Car object.
        car.ShowModel(); // Displays the car model.
    }

    // Demonstrating inheritance
    static void InheritanceExample()
    {
        Dog dog = new Dog(); // Creates a Dog object (inherits from Animal).
        dog.MakeSound(); // Calls the overridden MakeSound method.
    }

    // Demonstrating encapsulation
    static void EncapsulationExample()
    {
        BankAccount account = new BankAccount(); // Creates a BankAccount object.
        account.Deposit(500); // Deposits an amount into the account.
        Console.WriteLine("Account balance: " + account.GetBalance()); // Displays the balance.
    }

    // Demonstrating exception handling
    static void ExceptionExample()
    {
        try
        {
            int result = 10 / 0; // Attempts division by zero.
        }
        catch (Exception e)
        {
            Console.WriteLine("Error: " + e.Message); // Catches and displays the error message.
        }
    }

    // Demonstrating the use of lists
    static void ArrayListExample()
    {
        List<string> list = new List<string> { "Java", "Python", "C++" }; // Creates a list.
        Console.WriteLine("List size: " + list.Count); // Displays the number of items.
        Console.WriteLine("First item: " + list[0]); // Displays the first item.
    }
}

// Person class
class Person
{
    public string Name { get; set; } // Property to store the name.
    public int Age { get; set; }     // Property to store the age.

    public Person(string name, int age)
    {
        Name = name;
        Age = age;
    }

    public void Introduce() // Method to display the person's information.
    {
        Console.WriteLine("Hello, my name is " + Name + " and I am " + Age + " years old.");
    }
}

// Car class with the use of 'this'
class Car
{
    public string Model { get; set; }

    public Car(string model)
    {
        Model = model;
    }

    public void ShowModel()
    {
        Console.WriteLine("Car model: " + Model);
    }
}

// Base Animal class with inheritance
class Animal
{
    public string Name { get; set; }

    public Animal(string name)
    {
        Name = name;
    }

    public virtual void MakeSound() // Method that can be overridden.
    {
        Console.WriteLine("The animal makes a sound.");
    }
}

// Dog class that inherits from Animal
class Dog : Animal
{
    public Dog() : base("Dog") { }

    public override void MakeSound() // Overrides the MakeSound method.
    {
        Console.WriteLine("The dog barks.");
    }
}

// BankAccount class with encapsulation
class BankAccount
{
    private decimal balance; // Private field to store the balance.

    public BankAccount()
    {
        balance = 0;
    }

    public void Deposit(decimal amount)
    {
        if (amount > 0)
        {
            balance += amount;
        }
    }

    public decimal GetBalance() // Public method to access the balance.
    {
        return balance;
    }
}
