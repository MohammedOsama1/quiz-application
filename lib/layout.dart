import 'package:flutter/material.dart';
import 'package:untitled23/answer.dart';
import 'package:untitled23/question.dart';
import 'package:untitled23/result.dart';

import 'colors.dart';

bool brightMood = true;

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  List questionList = [
    {
      'questionText': 'Question one',
      'Answers': [
        {'AnswersText': 'answer 1', 'score': 10},
        {'AnswersText': 'answer 2', 'score': 20},
        {'AnswersText': 'answer 3', 'score': 30},
        {'AnswersText': 'answer 4 ', 'score': 40}
      ]
    },
    {
      'questionText': 'Question two',
      'Answers': [
        {'AnswersText': 'answer 1', 'score': 10},
        {'AnswersText': 'answer 2', 'score': 20},
        {'AnswersText': 'answer 3', 'score': 30},
        {'AnswersText': 'answer 4', 'score': 40},
      ]
    }
  ];
  int qIndex = 0;

  answerIncreaseFun(int score) {
    setState(() {
      qIndex++;
      totalScore += score;
    });
  }

  void restartQuiz() {
    setState(() {
      qIndex = 0;
      totalScore = 0;
    });
  }

  int totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: brightMood ? blue : teal,
          title: Text(
            'Quiz App',
            style: TextStyle(color:  white ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              brightMood ? brightMood = false : brightMood = true;
            });
          },
          backgroundColor: brightMood? blue:teal,
          child: Icon(
            Icons.nightlight_outlined,
            color:white,
          ),
        ),
        backgroundColor: brightMood ? white : black,
        body: qIndex < questionList.length
            ? Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  QuestionScreen(questionList, qIndex),
                  AnswerScreen(
                    questionList,
                    qIndex,
                    answerIncreaseFun,
                  )
                ],
              )
            : ResultScreen(restartQuiz, totalScore));
  }
}
