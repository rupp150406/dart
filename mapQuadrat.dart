import 'dart:io';

void main() {
  while (true) {
    double number; // Declare number as a non-nullable double

    // Input for the number
    while (true) {
      stdout.write("Enter a number: ");
      String? input = stdin.readLineSync();
      
      if (input == null || input.isEmpty) {
        print("Enter a number first.");
        continue;
      }

      try {
        number = double.parse(input);
        break; // Exit the loop if the input is valid
      } catch (e) {
        print("Please enter a number.");
      }
    }

    // Calculate the square
    double square = number * number;

    // Output the result
    print("The square of $number is $square.");

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
