import 'dart:io';

class Car {
  double _speed = 0.0; // Private variable to hold the speed

  // Getter for speed
  double get speed => _speed;

  // Setter for speed
  set speed(double value) {
    if (value < 0) {
      print("Speed cannot be negative. Setting speed to 0.");
      _speed = 0.0;
    } else {
      _speed = value;
    }
  }
}

void main() {
  Car car = Car(); // Create an instance of the Car class

  while (true) {
    double speed; // Declare speed as a non-nullable double

    // Input for the speed
    while (true) {
      stdout.write("Enter the speed of the car: ");
      String? input = stdin.readLineSync();

      if (input == null || input.isEmpty) {
        print("Enter a number first.");
        continue;
      }

      try {
        speed = double.parse(input);
        break; // Exit the loop if the input is valid
      } catch (e) {
        print("Please enter a number.");
      }
    }

    // Set the speed using the setter
    car.speed = speed; // No need for the null check here

    // Output the result
    print("The speed of the car is ${car.speed} km/h.");

    // Ask if the user wants to calculate again
    while (true) {
      stdout.write("Do you want to calculate again? (y/n): ");
      String? repeat = stdin.readLineSync()?.toLowerCase();

      if (repeat == 'y') {
        break; // Exit the inner loop to repeat the calculation
      } else if (repeat == 'n') {
        print("Thank you for using this program.");
        return; // Exit the program
      } else {
        print("Please enter 'y' or 'n'.");
      }
    }
  }
}
