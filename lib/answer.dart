import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.redAccent.shade400,
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white),
            child: Text(answerText),
            onPressed: selectHandler));
  }
}
