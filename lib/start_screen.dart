import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/home.png'),
        const Text(
          'Flags challenge!!',
          style:
              TextStyle(color: Color.fromARGB(255, 67, 83, 90), fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {},
            child: const Text('Start'))
      ],
    ));
  }
}
