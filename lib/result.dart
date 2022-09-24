import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  // const Result({super.key});
  var resultScore;

  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String result;
    if (resultScore <= 15) {
      result = 'You should Improve Skills';
    } else if (resultScore <= 19) {
      result = "Better Beginning";
    } else if (resultScore <= 22) {
      result = "Awesome Pretty Good";
    } else {
      result = "Incomparable !!";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        heightFactor: 29,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  letterSpacing: 7,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.red),
              resultPhrase,
            ),
            TextButton(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              onPressed: () => resetHandler(),
              child: Text("Reset Game"),
              style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(
                    TextStyle(height: 4),
                  ),
                  // minimumSize: MaterialStateProperty.all(Size.fromWidth(10)),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 203, 48, 230)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(20))),
            )
          ],
        ),
      ),
    );
  }
}
