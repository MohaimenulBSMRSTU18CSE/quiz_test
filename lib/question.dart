import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  const Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        question,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
