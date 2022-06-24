import 'package:flutter/material.dart';
import 'package:untitled23/colors.dart';

import 'layout.dart';

class QuestionScreen extends StatelessWidget {

  final int qIndex ;
  final List questionList ;
  const QuestionScreen(this.questionList,this.qIndex, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Text(
          questionList[qIndex]['questionText'],
          style:  TextStyle(
              color: brightMood? black:white,
              fontWeight: FontWeight.bold, fontSize: 30),
        )) ;
  }
}
