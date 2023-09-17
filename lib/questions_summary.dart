import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString()),
                const SizedBox(width: 20),
                Expanded(
                  child: Row(
                    children: [
                      Image.asset(data['flag'] as String,
                          width: 40, fit: BoxFit.fill),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Text(
                            data['correct_answer'] as String,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(data['user_answer'] as String),
                        ],
                      ),
                      data['correct_answer'] == data['user_answer']
                          ? const Icon(
                              Icons.check,
                              color: Colors.greenAccent,
                            )
                          : const Icon(
                              Icons.close,
                              color: Colors.red,
                            )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
