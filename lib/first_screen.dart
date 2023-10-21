import "package:flutter/material.dart";

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  final welcomeText = "Learn flutter the fun way!";
  final buttonText = "Start Quiz";

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Color.fromARGB(255, 3, 62, 164)])),
      child: Center(
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
    );
  }
}
