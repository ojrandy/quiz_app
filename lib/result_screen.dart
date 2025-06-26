import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
   const ResultScreen( this.restartQuiz, {super.key});

  final void Function() restartQuiz;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You answer X out of Y questions right"),
            SizedBox(height: 30),
            Text("List of Answers and question..."),
            SizedBox(height: 30),
            TextButton(onPressed:  restartQuiz, child: Text("Retry Quiz")),
          ],
        ),
      ),
    );
  }
}
