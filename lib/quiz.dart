import 'package:flutter/material.dart';

import 'gradient_container.dart';
import 'start_Screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(
          child: StartScreen(),
        ),
      ),
    );
  }
}
