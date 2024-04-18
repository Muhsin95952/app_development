import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class quizApp extends StatefulWidget {
  const quizApp({super.key});

  @override
  State<quizApp> createState() => _quizAppState();
}

class _quizAppState extends State<quizApp> {

List<Icon> scoreKeeper = [];

  List<String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.'
  ];

  int questionNumber = 0;
  
  List<bool> answers = [false, true, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(questions[questionNumber],
                  style: TextStyle(
                    color: Colors.white,
                     fontSize: 25,
                      fontWeight: FontWeight.bold),),
                ),
              ),
            ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: RawMaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                        fillColor: Colors.green,
                        child: Text("True", 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),),
                      onPressed: (){
                         bool correctAnswer = answers[questionNumber];
                      if(correctAnswer == true){
                        scoreKeeper.add(const Icon(Icons.check,color: Colors.green,));
                      }else{
                        scoreKeeper.add(const Icon(Icons.close,color: Colors.red,));
                      }
                     setState(() {
                       if(questionNumber < 2){
                         questionNumber ++;
                       }else{
                         questionNumber = 0;
                       }
                     });
                      print("Question number is : $questionNumber");
                      }),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: RawMaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                        fillColor: Colors.red,
                        child: Text("False", 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),),
                      onPressed: (){
                        bool correctAnswer = answers[questionNumber];
                      if(correctAnswer == false){
                        scoreKeeper.add(const Icon(Icons.check,color: Colors.green,));
                      }else{
                        scoreKeeper.add(const Icon(Icons.close,color: Colors.red,));
                      }

                      setState(() {
                       if(questionNumber<2){
                         questionNumber ++;
                       }else{
                         questionNumber = 0;
                       }
                      });
                      print("Question number is : $questionNumber");
                      }),
                  ),
                ),
                Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: scoreKeeper,
              ),
            ),
          ],
        ),
      ),
    );
  }
}