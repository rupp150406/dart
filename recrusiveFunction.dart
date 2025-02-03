import 'dart:io';

// Recursive function to calculate the factorial of a number
int factorial(int n) {
  if (n <= 1) {
    return 1; // Base case
  } else {
    return n * factorial(n - 1); // Recursive case
  }
}

void main() {
  while (true) {
    int number; // Declare number as a non-nullable int

    // Input for the number
    while (true) {
      stdout.write("Enter a non-negative integer: ");
      String? input = stdin.readLineSync();

      if (input == null || input.isEmpty) {
        print("Enter a number first.");
        continue;
      }

      try {
        number = int.parse(input);
        if (number < 0) {
          print("Please enter a non-negative integer.");
          continue;
        }
        break; // Exit the loop if the input is valid
      } catch (e) {
        print("Please enter a number.");
      }
    }

    // Calculate the factorial
    int result = factorial(number); // No need for the null check here

    // Output the result
    print("The factorial of $number is $result.");

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
