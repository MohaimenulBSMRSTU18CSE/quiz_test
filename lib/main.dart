import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizappdemo/answer.dart';
import 'package:quizappdemo/question.dart';
import 'package:quizappdemo/quiz.dart';
import 'package:quizappdemo/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questionList = [
    {
      "question": "What's your favourite fruit ?",
      "answers": [
        {"text": "Mango", "score": 5},
        {"text": "Banana", "score": 6},
        {"text": "Apple", "score": 7},
        {"text": "coconut", "score": 8},
      ],
    },
    {
      "question": "What's your favourite Play ?",
      "answers": [
        {"text": "FootBall", "score": 5},
        {"text": "Cricket", "score": 6},
        {"text": "BasketBall", "score": 7},
        {"text": "Tennis", "score": 8},
      ],
    },
    {
      "question": "What's your favourite app program ?",
      "answers": [
        {"text": "Flutter", "score": 5},
        {"text": "React Netive", "score": 6},
        {"text": "Android", "score": 7},
        {"text": "Django", "score": 5},
      ],
    },
    {
      "question": "What's your favourite code Editor ?",
      "answers": [
        {"text": "Vs code", "score": 5},
        {"text": "Subline", "score": 6},
        {"text": "Pycharm", "score": 7},
        {"text": "note pad", "score": 5},
      ],
    },
  ];
  int _result = 0;
  int _increment = 0;
  void _incrementQuiz(int score) {
    setState(() {
      _increment++;
    });
    _result = _result + score;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
          ),
          body: _increment < questionList.length
              ? /*
                  Sir this system
                  Quiz(
                  increment: _increment,
                  questionFunction: _incrementQuiz,
                  questionlist: questionList)*/
              Center(
                  child: Column(
                    children: [
                      Question(questionList[_increment]['question'] as String),
                      // ignore: deprecated_member_use
                      ...(questionList[_increment]['answers'] as List)
                          .map((answer) {
                        return AnswerButtom(
                          answer['text'],
                          () => _incrementQuiz(answer['score']),
                        );
                      }).toList()
                    ],
                  ),
                )
              : Result(_result)),
    );
  }
}
