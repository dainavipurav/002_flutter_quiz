import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basic_quiz_app_udemy/questions_screen.dart';

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
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(
          child: activeScreen,
        ),
      ),
    );
  }
}
