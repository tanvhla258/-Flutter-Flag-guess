import 'package:flutter/material.dart';
import 'package:first_app/data/questions.dart';
import 'package:first_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswer, required this.restartQuiz});

  final List<String> chosenAnswer;
  final void Function() restartQuiz;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      var flagImg = questions[i].flag;
      summary.add({
        'question_index': i,
        'flag': 'assets/images/$flagImg.png',
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();

    final numTotalQuesitons = questions.length;
    final numCorrectQuesitons = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
                'You answered $numCorrectQuesitons out of $numTotalQuesitons questions correctly!'),
            const SizedBox(
              height: 30,
            ),
            const Text('List of answers and questions...'),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  restartQuiz();
                },
                child: const Text('Restart Quiz'))
          ]),
        ));
  }
}
