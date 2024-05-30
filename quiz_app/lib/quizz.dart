import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/questionData.dart';

class quizApp extends StatefulWidget {
  const quizApp({super.key});

  @override
  State<quizApp> createState() => _quizAppState();
}

class _quizAppState extends State<quizApp> {

List<Icon> scoreKeeper = [];

QuestionData questionData = QuestionData();
 showIcon(bool userPickedAnswer){
  setState(() {
    if(questionData.isFinished()){

      //  showDialog(context: context, builder: (context){
      //   return AlertDialog(
      //     title: Text("Finished!!"),
      //     content: Text("Quizz has been endded",style: TextStyle(fontSize: 18),),
      //     actions: [
      //       RawMaterialButton(
      //         child: Text("Ok",style: TextStyle(fontSize: 18),),
      //           onPressed: (){
      //         Navigator.of(context).pop();
      //       })
      //     ],
      //   );
      // });

      questionData.resetQuestionNo();
      scoreKeeper = [];
    }
    else{
      bool correctAnswer = questionData.getAnswerText();
      if(correctAnswer == userPickedAnswer){
      scoreKeeper.add(const Icon(Icons.check,color: Colors.green,));
      }else{
      scoreKeeper.add(const Icon(Icons.close,color: Colors.red,));
      }
      questionData.nextQuestion();
    }

  });

 }
 
  int questionNumber = 0;
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
                  child: Text(questionData.getQuestionText(),
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
                        showIcon(true);
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
                        showIcon(false);
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