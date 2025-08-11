Activity 2
void main() {
  print("==Simple Calculator==");

  print("Enter the 1st number: ");
  double? number1 = double.tryParse(stdin.readLineSync()!);


  print("Enter an operator (+, -, *, /): ");
  String? operator = stdin.readLineSync();


  print("Enter the 2nd number: ");
  double? number2 = double.tryParse(stdin.readLineSync()!);

 
  if (number1 == null || number2 == null || operator == null) {
    print("Invalid Please enter valid numbers and operator.");
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
        print("Error:Zero is not allow in division.");
        return;
      }
      break;
    default:
      print("Invalid operator. Please use +, -, *, or /.");
      return;
  }
  print("Result: $number1 $operator $number2 = $result");
}
