import 'package:flutter/material.dart';
import 'package:quizappdemo/answer.dart';
import 'package:quizappdemo/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionlist;
  final int increment;
  final Function questionFunction;
  const Quiz(
      {required this.increment,
      required this.questionFunction,
      required this.questionlist});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Question(questionlist[increment]['question'] as String),
          // ignore: deprecated_member_use
          ...(questionlist[increment]['answers'] as List).map((answer) {
            return AnswerButtom(
              answer['text'],
              () => questionFunction(answer['score']),
            );
          }).toList()
        ],
      ),
    );
  }
}
