import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";

class Question extends StatelessWidget {
  final String questionLabel;

  Question(this.questionLabel);

  @override
  Widget build(BuildContext context) {
    return Text(
      style: TextStyle(
          fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
      questionLabel,
    );
  }
}
