import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  // const Answer({super.key});
  final Function funcHandler;
  String answer;
  Answer(this.funcHandler,this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(visualDensity: VisualDensity.adaptivePlatformDensity,foregroundColor: Colors.white,
            primary: Color.fromARGB(255, 202, 52, 117), minimumSize: const Size.fromHeight(50)),
        onPressed: () => funcHandler(),
        child: Text(answer),
      ),
    );
  }
}
