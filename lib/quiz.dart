import 'package:flutter/material.dart';

import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/quiz_question.dart';
import 'package:quiz_app/result_screen.dart';

import 'container_widgets.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];

  // Variable to track the active screen
  var activeScreen = "screen_one";

  void switchScreen() {
    setState(() {
      activeScreen = "screen_two";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    // Logic to handle the answer can be added here
    if (selectedAnswer.length == questions.length) {
      // If all answers are selected, switch back to the first screen
      setState(() {
        activeScreen = "result_screen";
      });
    }
  }

  // Function to restart the quiz
  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = "screen_one";
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenWidget = activeScreen == "screen_one"
        ? ContainerWidgets(switchScreen)
        : QuizQuestion(onAnswerSelected: chooseAnswer);

    // If the active screen is the result screen, show the ResultScreen widget
    if (activeScreen == "screen_two") {
      screenWidget = QuizQuestion(onAnswerSelected: chooseAnswer);
    }
    // If the active screen is the result screen, show the ResultScreen widget
    if (activeScreen == "result_screen") {
      screenWidget = ResultScreen(
        chosenAnswers: selectedAnswer,
        restartQuiz: restartQuiz,
      );
    }

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
