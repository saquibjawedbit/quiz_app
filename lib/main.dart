import 'package:flutter/material.dart';

void main() {
  return runApp(const MainView());
}

class MainView extends StatelessWidget {
  const MainView({super.key});

  final welcomeText = "Learn flutter the fun way!";
  final buttonText = "Start Quiz";

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 129, 49, 235),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              height: 300,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              welcomeText,
              style: const TextStyle(fontSize: 26, color: Colors.white),
            ),
            const SizedBox(
              height: 25,
            ),
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                child: Text(buttonText))
          ],
        )),
      ),
    );
  }
}
