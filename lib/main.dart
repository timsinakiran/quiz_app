import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";

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
  void _answerQuestion() {
    setState(() {
      _questionIndex = (_questionIndex + 1) % 3;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('A very basic Quiz App!'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>).map((e) {
              return Answer(_answerQuestion, e);
            }).toList()
          ],
        ),
      ),
    );
  }
}
