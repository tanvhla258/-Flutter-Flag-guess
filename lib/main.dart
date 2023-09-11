import 'package:flutter/material.dart';
import 'package:first_app/start_screen.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: Container(
    decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFFA5D6A7), Color(0xFF81C784)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight)),
    child: const StartScreen(),
  ))));
}
