import 'package:flutter/material.dart';

class ContainerWidgets extends StatelessWidget {
  const ContainerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.pinkAccent),
      // Container with a pink background color
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
              height: 200,
              color: Colors.black87,
            ),
            const SizedBox(height: 20),
            Text("Get Started with Flutter Quiz"),
            TextButton(onPressed: () {}, 
            child: const Text("Start Quiz >>")),
          ],
        ),
      ),
    );
  }
}
