import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  // const Quiz({super.key});

  final List<Map<String,Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({required this.questions,required this.answerQuestion,required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Question(
                      questions[questionIndex]['questionLabel'] as String,
                    ),
                  ),
                  ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
                      .map((answer) {
                    return Answer(() => answerQuestion(answer['score']), answer['text'] as String);
                  }).toList()
                ],
              ),
            );
  }
}