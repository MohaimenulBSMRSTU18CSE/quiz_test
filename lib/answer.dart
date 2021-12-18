import 'package:flutter/material.dart';

class AnswerButtom extends StatelessWidget {
  final String answer;
  final VoidCallback incrementFunction;
  const AnswerButtom(this.answer, this.incrementFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: incrementFunction,
        child: Text(
          answer,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        color: Colors.blue,
      ),
    );
  }
}
