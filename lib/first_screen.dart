import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen(this.startQuiz, {super.key});

  final void Function(String) startQuiz;

  final welcomeText = "Learn flutter the fun way!";
  final buttonText = "Start Quiz";

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        Text(
          welcomeText,
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 26,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        OutlinedButton.icon(
          onPressed: () {
            startQuiz("question-screen");
          },
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          label: Text(buttonText),
          icon: const Icon(Icons.arrow_right_alt),
        )
      ],
    ));
  }
}
