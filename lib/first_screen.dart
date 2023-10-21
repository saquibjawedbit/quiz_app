import "package:flutter/material.dart";

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

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
          style: const TextStyle(fontSize: 26, color: Colors.white),
        ),
        const SizedBox(
          height: 25,
        ),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          label: Text(buttonText),
          icon: const Icon(Icons.arrow_right_alt),
        )
      ],
    ));
  }
}
