import 'package:flutter/material.dart';
import 'package:untitled23/colors.dart';

import 'layout.dart';

class AnswerScreen extends StatelessWidget {
  final List questionList;

  final int qIndex;

  final Function(int s) answerIncreaseFun;


  const AnswerScreen(this.questionList, this.qIndex, this.answerIncreaseFun,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...(questionList[qIndex]['Answers'] as List<Map<String, Object>> ).map((e) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            width: double.infinity,
            child: MaterialButton(
              onPressed: (){
                answerIncreaseFun(int.parse(e['score'].toString()));
              },
              color: brightMood? blue:teal,
              child: Text(
                e['AnswersText'].toString(),
                style:  TextStyle(fontSize: 26, color: white,
                ),
              ),
            ),
          );
        }).toList()
      ],
    );
  }
}
