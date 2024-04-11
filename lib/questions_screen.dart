import 'package:flutter/material.dart';
import 'package:flutter_basic_quiz_app_udemy/answer_button.dart';
import 'package:flutter_basic_quiz_app_udemy/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(
              answerText: answer,
              onTap: () {},
            );
          }),
        ],
      ),
    );
  }
}
