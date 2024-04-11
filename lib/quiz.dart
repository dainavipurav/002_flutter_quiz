import 'package:flutter/material.dart';
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
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'start-screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(
          child: screenWidget,
        ),
      ),
    );
  }
}
