import 'package:first_app/questions_screen.dart';
import 'package:first_app/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start_screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFFA5D6A7), Color(0xFF81C784)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)),
      child: activeScreen == 'start_screen'
          ? StartScreen(switchScreen)
          : const QuestionsScreen(),
    )));
  }
}
