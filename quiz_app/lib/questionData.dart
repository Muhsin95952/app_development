import 'package:quiz_app/questionClass.dart';

class QuestionData{
  int questionNumber = 0;

  final List<question> questionBank = [
    question(questionText: "You can lead a cow down stairs but not up stairs.", answerText: false),
    question(questionText: "Approximately one quarter of human bones are in the feet.", answerText: true),
    question(questionText: "A slug's blood is green.", answerText: true),
    question(questionText: "You can lead a cow down stairs but not up stairs.", answerText: false),
    question(questionText: "Approximately one quarter of human bones are in the feet.", answerText: true),
    question(questionText: "A slug's blood is green.", answerText: true),
    question(questionText: "You can lead a cow down stairs but not up stairs.", answerText: false),
    question(questionText: "Approximately one quarter of human bones are in the feet.", answerText: true),
    question(questionText: "A slug's blood is green.", answerText: true),

  ];

  void nextQuestion(){
    if(questionNumber < questionBank.length - 1){
      questionNumber++;
    }
  }

  String getQuestionText(){
    return questionBank[questionNumber].questionText;
  }

  bool getAnswerText(){
    return questionBank[questionNumber].answerText;
  }

  bool isFinished(){
    if(questionNumber >= questionBank.length - 1){
      return true;
    }
    else{
      return false;
    }
  }
  void resetQuestionNo(){
    questionNumber = 0;
  }
}

