class calculate2 {
  num num1;
  String operation;
  num num2;

  calculate2({required this.num1, required this.operation, required this.num2}){
    switch(operation){
      case "+":
        print("Addition of the $num1 and $num2 = ${num1 + num2}");
        break;
      case "-":
        print("Subtraction of the $num1 and $num2 = ${num1 - num2}");
        break;
      case "*":
        print("Multiplication of the $num1 and $num2 = ${num1 * num2}");
        break;
      case "/":
        print("Division of the $num1 and $num2 = ${num1 / num2}");
        break;
    }
  }
}

void main(){
  calculate2 cal = calculate2(num1: 34, operation: "+", num2: 23);
  calculate2 cal1 = calculate2(num1: 34, operation: "-", num2: 23);
  calculate2 cal2 = calculate2(num1: 34, operation: "*", num2: 23);
  calculate2 cal3 = calculate2(num1: 34, operation: "/", num2: 23);
}
