import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  const Result(this.result);
  String get getResult {
    String results = "Quiz App Completed";
    if (result < 30) {
      results = "Good result";
    }
    return results;
  }

  //String get results => null;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(getResult),
        ],
      ),
    );
  }
}
