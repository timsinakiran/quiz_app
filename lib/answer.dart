import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text('Answer Test',),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      
        onPressed: selectHandler,
      ),
    );
  }
}
