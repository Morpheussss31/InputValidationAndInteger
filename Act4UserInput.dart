import 'dart:io';

void main() {
  stdout.write("Enter Age: "); 
  String? input = stdin.readLineSync();

  int? ageNumber; 

  
  if (input != null && input.trim().isNotEmpty) {
    ageNumber = int.tryParse(input.trim()); 
  }

  
  if (ageNumber != null) {
    print("The entered number is $ageNumber");

    
    if (ageNumber >= 18) {
      print("You are an adult.");
    } else if (ageNumber >= 0) {
      print("You are a Minor.");
    } else {
     
      print("Invalid age entered. Age cannot be negative.");
    }
  } else {
    
    print("Invalid input. Please enter a valid number for age.");
  }
}