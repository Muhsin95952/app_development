
//import 'package:calculator/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(calculator());
}

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: result(),
//     );
//   }
// }






class calculator extends StatefulWidget {
  const calculator({super.key});

// int calculate({int? num1, int? num2}){
//   int result = num1 + num2;
//   return result;
// }

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {

  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();
  TextEditingController resultController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: 
      
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          leading: Icon(Icons.calculate, size: 40, color: Colors.white,),
          title: Text("CalcuLator",
          style: TextStyle(fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,

          ),),
        ),
        body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 50,
              width: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 2),
              ),
              child: TextField(

                controller: firstNumberController,
                keyboardType: TextInputType.number,

                style: TextStyle(fontSize: 20,
                color: Colors.black, 
                fontWeight: FontWeight.bold),
              ),
            ),
          ),

          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 50,
              width: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 2),
              ),
              child: TextField(

                controller: secondNumberController,
                keyboardType: TextInputType.number,

                style: TextStyle(fontSize: 20,
                color: Colors.black, 
                fontWeight: FontWeight.bold),
              ),
            ),
          ),
          
          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                child: Icon(Icons.add),
                backgroundColor: Colors.amber[200],
                onPressed: (){
                  addition();
                }),
              FloatingActionButton(
                child: Text("_"),
                backgroundColor: Colors.amber[200],
                onPressed: (){
                  subtraction();
                }),
              FloatingActionButton(
                child: Text("X"),
                backgroundColor: Colors.amber[200],
                onPressed: (){
                  multiplication();
                }),
              FloatingActionButton(
                child: Text("/"),
                backgroundColor: Colors.amber[200],
                onPressed: (){
                  division();
                  
                }),
            ],
          ),

          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 50,
              width: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 2),
              ),
              child: TextField(

                controller: resultController,
                readOnly: true,

                style: TextStyle(fontSize: 20,
                color: Colors.black, 
                fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],),
      ),
    );
  }

  void addition() {
    double firstNumber = double.tryParse(firstNumberController.text) ?? 0.0;
    double secondNumber = double.tryParse(secondNumberController.text) ?? 0.0;

    double result = firstNumber + secondNumber;

    setState(() {
      resultController.text = result.toString();
    });
  }
  void subtraction() {
    double firstNumber = double.tryParse(firstNumberController.text) ?? 0.0;
    double secondNumber = double.tryParse(secondNumberController.text) ?? 0.0;

    double result = firstNumber -secondNumber;

    setState(() {
      resultController.text = result.toString();
    });
  }
  void multiplication() {
    double firstNumber = double.tryParse(firstNumberController.text) ?? 0.0;
    double secondNumber = double.tryParse(secondNumberController.text) ?? 0.0;

    double result = firstNumber * secondNumber;

    setState(() {
      resultController.text = result.toString();
    });
  }
  void division() {
    double firstNumber = double.tryParse(firstNumberController.text) ?? 0.0;
    double secondNumber = double.tryParse(secondNumberController.text) ?? 0.0;

    double result = firstNumber / secondNumber;

    setState(() {
      resultController.text = result.toString();
    });
  }

}

