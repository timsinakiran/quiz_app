import 'package:first_app/question.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  @override
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({this.answerQuestion, this.questions, this.questionIndex});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((e) => Answer(answerQuestion, e))
            .toList()
      ],
    );
  }
}
