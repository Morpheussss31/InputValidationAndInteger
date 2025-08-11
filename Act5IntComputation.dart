import 'dart:io';

void main() {
  print("==Simple Calculator==");

  print("Enter the 1st number: ");

  String? input1 = stdin.readLineSync();
  double? number1 = double.tryParse(input1 ?? '');

  print("Enter an operator (+, -, *, /): ");
  String? operator = stdin.readLineSync();

  print("Enter the 2nd number: ");
  String? input2 = stdin.readLineSync();
  double? number2 = double.tryParse(input2 ?? '');


  if (number1 == null || number2 == null || operator == null || operator.isEmpty) {
    print("Invalid input. Please ensure valid numbers and an operator are provided.");
    return;
  }

  double? result;
  switch (operator) {
    case '+':
      result = number1 + number2;
      break;
    case '-':
      result = number1 - number2;
      break;
    case '*':
      result = number1 * number2;
      break;
    case '/':
      if (number2 != 0) {
        result = number1 / number2;
      } else {
        print("Error: Cannot divide by zero.");
        return; 
      }
      break;
    default:
      print("Invalid operator. Please use +, -, *, or /.");
      return; 
  }

  
  print("Result: $number1 $operator $number2 = $result");
}