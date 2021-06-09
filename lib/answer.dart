import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      
        onPressed: selectHandler,
      ),
    );
  }
}
