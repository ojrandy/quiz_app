import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_question.dart';

import 'container_widgets.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = "screen_one";

  void switchScreen() {
    setState(() {
      activeScreen = "screen_two";
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidget = activeScreen == "screen_one"
        ? ContainerWidgets(switchScreen)
        : const QuizQuestion();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(181, 218, 52, 11),
        ), // App Bar ends

        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 94, 5, 153),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
