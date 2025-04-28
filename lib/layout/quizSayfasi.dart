import 'package:flutter/material.dart';
import 'package:quizuygulamasii/layout/endScreen.dart';
import 'package:quizuygulamasii/layout/widgets.dart';
import 'package:quizuygulamasii/logic/questionController.dart';
import 'package:quizuygulamasii/logic/questions.dart';
import 'package:quizuygulamasii/model/quizmodel.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentLevel = 1;
  int userPoints = 0;
  late QuizModel currentQuestion;
  late List<String> answers;
  late List<int> questionIndex;
  List<bool?> answerValidation = [null, null, null, null];
  bool hasAnswered = false; // Cevap verilip verilmediğini kontrol etmek için işaretleyici

  @override
  void initState() {
    super.initState();
    questionIndex = getRandomQuestiomIndex(13);
    loadNewQuestion();
  }

  loadNewQuestion() {
    setState(() {
      currentQuestion = loadQuestion(questionIndex[currentLevel - 1]);
      answers = getRandomQuestionList(
          currentQuestion.wrongAnswer, currentQuestion.correctAnswer);
      answerValidation = [null, null, null, null];
      hasAnswered = false; // Yeni soru yüklendiğinde cevabı sıfırla
    });
  }

  validateAndShowQuestion(int userAnswerIndex) async {
    if (!hasAnswered) {
      setState(() {
        int correctIndex = getCorrectAnswerIndex(answers, currentQuestion.correctAnswer);
        answerValidation[correctIndex] = true;
        if (userAnswerIndex == correctIndex) {
          userPoints++;
        } else {
          answerValidation[userAnswerIndex] = false;
        }
        hasAnswered = true;
      });

      await Future.delayed(Duration(seconds: 2));

      setState(() {
        currentLevel++;
        if (currentLevel <= 10) {
          loadNewQuestion();
        } else {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => EndScreen(userPoints: this.userPoints,)));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppar("Quiz"),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/arkaplan.jpg"), fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                currentQuestion.question,
                style: headerTextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              Text(
                "Mevcut Seviye:",
                style: normalTextStyle(color: Colors.white),
              ),
              StepProgressIndicator(
                totalSteps: 10,
                currentStep: currentLevel,
                selectedColor: Colors.green,
                unselectedColor: Colors.red,
              ),
              Spacer(),
              Text("Puanlar:" + userPoints.toString(),
                style: headerTextStyle(color: Colors.grey),
              ),
              Spacer(),
              GestureDetector(
                child: AnswerCard(answers[0], context, answer: answerValidation[0]),
                onTap: () {
                  validateAndShowQuestion(0);
                },
              ),
              GestureDetector(
                child: AnswerCard(answers[1], context, answer: answerValidation[1]),
                onTap: () {
                  validateAndShowQuestion(1);
                },
              ),
              GestureDetector(
                child: AnswerCard(answers[2], context, answer: answerValidation[2]),
                onTap: () {
                  validateAndShowQuestion(2);
                },
              ),
              GestureDetector(
                child: AnswerCard(answers[3], context, answer: answerValidation[3]),
                onTap: () {
                  validateAndShowQuestion(3);
                },
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
