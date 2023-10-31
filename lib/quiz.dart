import 'package:flutter/material.dart';
import 'package:quiz_app/first_screen.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = "first-screen";
  List<String> selectedAnswers = [];

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void switchScreen(String screenId) {
    setState(() {
      activeScreen = screenId;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen;
    if (activeScreen == "question-screen") {
      currentScreen = QuestionScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == "result-screen") {
      currentScreen = ResultScreen(
        chosenAnswers: selectedAnswers,
        restartQuiz: switchScreen,
      );
      selectedAnswers = [];
    } else {
      currentScreen = FirstScreen(switchScreen);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Color.fromARGB(255, 3, 62, 164)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: currentScreen),
      ),
    );
  }
}
