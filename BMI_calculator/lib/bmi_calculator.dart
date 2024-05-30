import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/customize_container.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text("BMI Calculator",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30
        ),),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
              child: customizeContainer(myColor: Colors.green,
              myChild: Column(
                children: [
                  Icon(Icons.male)
                ],
              )
              ),
            ),Expanded(
              child: customizeContainer(myColor: Colors.blue,
              myChild: Column(
                children: [
                  Icon(Icons.female)
                ],
              ),
              ),
            ),
              ],
            ),
          ),
          Expanded(
            child: customizeContainer(myColor: Colors.amber,
            

            ),
          ),
          
          Expanded(
            child: Row(
              children: [
                Expanded(
              child: customizeContainer(myColor: Colors.amber,
             
              ),
            ),Expanded(
              child: customizeContainer(myColor: Colors.grey,
             
              ),
            ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}