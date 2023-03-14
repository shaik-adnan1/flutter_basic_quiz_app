import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({super.key});

  final int finalScore;
  final VoidCallback resetHandler;

  Result(this.finalScore, this.resetHandler);

  String get resultPhrase {
    // Getter and else if
    var resultText = 'You did it';
    if (finalScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (finalScore <= 20) {
      resultText = 'You are a cool!!';
    } else {
      resultText = 'You are a chick catcher!!';
    }
    return '$resultText $finalScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(child: Text('Reset Quiz'), onPressed: resetHandler)
        ],
      ),
    );
  }
}
