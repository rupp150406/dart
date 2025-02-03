import 'dart:io';
import 'dart:math';

List<double>? calculateQuadratic(double a, double b, double c) {
  double discriminant = b * b - 4 * a * c;
  if (discriminant > 0) {
    double root1 = (-b + sqrt(discriminant)) / (2 * a);
    double root2 = (-b - sqrt(discriminant)) / (2 * a);
    return [root1, root2];
  } else if (discriminant == 0) {
    double root = -b / (2 * a);
    return [root];
  } else {
    return null; // No real roots
  }
}

void main() {
  while (true) {
    double? a, b, c;

    // Input for coefficient a
    while (true) {
      stdout.write("Enter coefficient a (not zero): ");
      String? input = stdin.readLineSync();
      if (input == null || input.isEmpty) {
        print("Please enter a number first.");
        continue;
      }
      try {
        a = double.parse(input);
        if (a == 0) {
          print("Coefficient a cannot be zero. Please enter a valid number.");
          continue;
        }
        break;
      } catch (e) {
        print("Please enter a number.");
      }
    }

    // Input for coefficient b
    while (true) {
      stdout.write("Enter coefficient b: ");
      String? input = stdin.readLineSync();
      if (input == null || input.isEmpty) {
        print("Please enter a number first.");
        continue;
      }
      try {
        b = double.parse(input);
        break;
      } catch (e) {
        print("Please enter a number.");
      }
    }

    // Input for coefficient c
    while (true) {
      stdout.write("Enter coefficient c: ");
      String? input = stdin.readLineSync();
      if (input == null || input.isEmpty) {
        print("Please enter a number first.");
        continue;
      }
      try {
        c = double.parse(input);
        break;
      } catch (e) {
        print("Please enter a number.");
      }
    }

    // Calculate roots
    List<double>? roots = calculateQuadratic(a, b, c);

    // Output results
    if (roots == null) {
      print("The equation has no real roots.");
    } else if (roots.length == 1) {
      print("The equation has one real root: ${roots[0]}");
    } else {
      print("The equation has two real roots: ${roots[0]} and ${roots[1]}");
    }

    // Ask if the user wants to calculate again
    while (true) {
      stdout.write("Do you want to calculate again? (y/n): ");
      String? repeat = stdin.readLineSync()?.toLowerCase();
      if (repeat == 'y') {
        break;
      } else if (repeat == 'n') {
        print("Thank you for using this program.");
        return;
      } else {
        print("Please enter 'y' or 'n'.");
      }
    }
  }
}
