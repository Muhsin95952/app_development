import 'dart:io';

void main(){
  String grade = '';
  int? marks = int.parse(stdin.readLineSync()!);
  if(marks > 100){
    print("inavlid input");
} 
  if(marks >= 95)
    grade = "A";
  else if(marks >= 90)
    grade = "A-";
  else if(marks >= 85)
    grade = "B+";
  else if(marks >= 80)
    grade = "B";
  else if(marks >= 75)
    grade = "B-";
  else if(marks >= 70)
    grade = "C+";
  else if(marks >= 65)
    grade = "C";
  else if(marks >= 60)
    grade = "C-";
  else if(marks >= 55)
    grade = "D+";
  else if(marks >= 50)
    grade = "D";
  else 
    grade = "Fail";
   print("Your grade is  $grade");
  }
