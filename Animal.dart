import 'dart:io';

class Animal {
  String speak() {
    return "Animal sound";
  }
}

class Dog extends Animal {
  @override
  String speak() {
    return "Woof!";
  }
}

void main() {
  bool continueChoosing = true;

  while (continueChoosing) {
    print("Choose an animal:");
    print("1. Dog");
    print("2. Exit");

    String? choice = stdin.readLineSync();

    if (choice == null || choice.isEmpty) {
      print("Enter the choice first");
      continue;
    }

    switch (choice) {
      case '1':
        Dog dog = Dog();
        print("The dog says: ${dog.speak()}");
        break;
      case '2':
        continueChoosing = false;
        print("Thank you for using this program");
        break;
      default:
        print("Please enter the existing choice");
        break;
    }

    if (continueChoosing) {
      print("Do you want to choose again? (y/n)");
      String? again = stdin.readLineSync();

      if (again == null || again.isEmpty) {
        print("Enter the choice first");
        continue;
      }

      if (again.toLowerCase() == 'n') {
        continueChoosing = false;
        print("Thank you for using this program");
      } else if (again.toLowerCase() != 'y') {
        print("Please enter 'y' or 'n'");
      }
    }
  }
}
