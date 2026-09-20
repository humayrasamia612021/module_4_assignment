class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  // Method to calculate price after discount
  double discountedPrice(double discountPercent) {
    double discountAmount = price * discountPercent / 100;
    return price - discountAmount;
  }

  // Method to display book details
  void displayDetails(double discountPercent) {
    print("Title: $title");
    print("Author: $author");
    print("Original Price: \$${price.toStringAsFixed(1)}");
    print(
      "Price after ${discountPercent.toStringAsFixed(0)}% discount: "
          "\$${discountedPrice(discountPercent).toStringAsFixed(1)}",
    );
    print("--------------------------");
  }
}

class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
}

class Manager extends Employee {
  String department;

  // Constructor
  Manager(String name, double salary, this.department) : super(name, salary);

  // Method to display manager information
  void displayInformation() {
    print("Manager Information");
    print("Name: $name");
    print("Salary: \$${salary.toStringAsFixed(1)}");
    print("Department: $department");
    print("--------------------------");
  }
}

class Developer extends Employee {
  String programmingLanguage;

  // Constructor
  Developer(String name, double salary, this.programmingLanguage) : super(name, salary);

  // Method to display developer information
  void displayInformation() {
    print("Developer Information");
    print("Name: $name");
    print("Salary: \$${salary.toStringAsFixed(1)}");
    print("Programming Language: $programmingLanguage");
    print("--------------------------");
  }
}

abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is now running.");
  }

  @override
  void turnOff() {
    print("Fan is now stopped.");
  }
}

class Light extends Appliance {
  @override
  void turnOn() {
    print("Light is switched on.");
  }

  @override
  void turnOff() {
    print("Light is switched off.");
  }
}

void main() {
  // Two Book objects with discounted prices
  Book book1 = Book("Dart for Beginners", "John Smith", 500.0);
  Book book2 = Book("Learning OOP", "Jane Doe", 800.0);

  print("BOOK DETAILS");
  print("==========================");

  book1.displayDetails(10); // 10% discount
  book2.displayDetails(15); // 15% discount

  // One Manager and one Developer
  Manager manager = Manager("Rahim Ahmed", 60000.0, "HR");
  Developer developer = Developer("Samia Begum", 70000.0, "Dart");

  print("\nEMPLOYEE DETAILS");
  print("==========================");

  manager.displayInformation();
  developer.displayInformation();

  // Fan and Light objects
  Fan fan = Fan();
  Light light = Light();

  print("\nAPPLIANCE DETAILS");
  print("==========================");

  fan.turnOn();
  fan.turnOff();

  light.turnOn();
  light.turnOff();
}