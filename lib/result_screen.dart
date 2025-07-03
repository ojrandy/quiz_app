import 'package:flutter/material.dart';

import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/models/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    required this.chosenAnswers,
    required this.restartQuiz,
    super.key,
  });

  final List<String> chosenAnswers;

  final void Function() restartQuiz;

  // Object stores different kind of values
  // This function should return a summary of the quiz results
  // For now, it returns a dummy list
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].questionText,
        'answer': questions[i]
            .answers[0], // Assuming the first answer is the correct one
        'isCorrect': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['isCorrect'] == data['answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answer $numCorrectQuestions out of $numTotalQuestions questions right",
            ),
            SizedBox(height: 30),
            QuestionSummary(summaryData: getSummaryData()),
            SizedBox(height: 30),
            // Create  a function to retry the quiz
            TextButton.icon(
              onPressed: restartQuiz,
              icon: const Icon(Icons.refresh),
              label: const Text("Retry Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
