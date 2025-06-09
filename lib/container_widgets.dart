import 'package:flutter/material.dart';

class ContainerWidgets extends StatelessWidget {
  const ContainerWidgets(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            height: 200,
            color: const Color.fromARGB(111, 238, 4, 4),
          ),
          const SizedBox(height: 50),
          Text(
            "Learning without limitations",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            label: const Text("Start Quiz", style: TextStyle(fontSize: 22)),
            icon: Icon(Icons.arrow_right_alt, size: 30, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
