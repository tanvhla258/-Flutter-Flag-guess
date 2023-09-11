import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
            opacity: 0.6,
            child: Image.asset(
              'assets/images/home.png',
              width: 300,
            )),
        const Text(
          'Flags challenge!!',
          style:
              TextStyle(color: Color.fromARGB(255, 67, 83, 90), fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {
              startQuiz();
            },
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start'))
      ],
    ));
  }
}
