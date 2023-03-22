import 'package:flutter/material.dart';

import './quiz.dart';
import './reult.dart';

// class Person {
//   String name;
//   int age;

//   Person({this.name, this.age});
// }

// void main() {
//   // var person1 = Person(name: 'shaik', age: 25);

//   runApp(MyApp());
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // Adding pointer at State <MyApp> Explicitly establishing the connection

  var _questionIndex = 0;
  var _totalScore = 0; // variables in classes in classes are called properties

  void _resetQuiz() {
    setState(() {
      var _questionIndex = 0;
      var _totalScore = 0;
      print('working');
    });
  }

  final _questions = const [
    {
      // Map dataStructure // Similar to an object in "js"
      'questionText': "What is your favorite color?",
      'answers': [
        {'text': 'Red', 'score': 0},
        {'text': 'Blue', 'score': 4},
        {'text': 'Green', 'score': 3},
        {'text': 'purple', 'score': 6}
      ]
    },
    {
      'questionText': 'What do you like to do when no one is around ?',
      'answers': [
        {'text': 'Sleep', 'score': 2},
        {'text': 'spicy Stuff', 'score': 4},
        {'text': 'Think', 'score': 5},
        {'text': 'Dance!😂', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 5},
        {'text': 'lamb', 'score': 8},
        {'text': 'chicks🫡', 'score': 100}
      ]
    }
  ];

  _answerQuestion(int score) {
    // functions in classes are methods
    _totalScore += score;

    if (_questionIndex < _questions.length) {
      print("We have more _questions");
    }

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);

    // _questionIndex += 1;
    // print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HEY THERE'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

// Main.dart test comments


