import 'package:flutter/material.dart';
import 'package:untitled23/colors.dart';

import 'layout.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.restartQuiz, this.totalScore, {Key? key})
      : super(key: key);
  final Function() restartQuiz;

  final int totalScore;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          'Your Score is $totalScore Points',
          style: TextStyle(
              color: brightMood ? black : white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        )),

        TextButton(
          onPressed: restartQuiz,
          child: Text(
            'Restart',
            style: TextStyle(color: blue, fontSize: 40),
          ),
        )
      ],
    );
  }
}
