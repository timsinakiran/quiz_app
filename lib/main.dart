import "package:flutter/material.dart";
import './quiz.dart';
import 'package:first_app/result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': "What is UG Bazaar?",
      'answers': ["eCommerce", "Game", "Software", "Hardware"]
    },
    {
      'questionText': "What's a better name for UG Bazaar?",
      'answers': ["khojde", "garde", "thokde", "haande"]
    },
    {
      'questionText': "Is Automobile needed?",
      'answers': ["Yes", "No", "No Idea", "Maybe"]
    },
    {
      'questionText': "Does it have Contest?",
      'answers': ["No", "Yes"]
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print(_questions.length);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('A very basic Quiz App!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
