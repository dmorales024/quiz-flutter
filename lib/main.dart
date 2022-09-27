// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
    //underscore before a class name turns it into a private class
    //now it can only be used in the MyApp class
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {'text': 'duck', 'score': 5},
        {'text': 'elephant', 'score': 8},
        {'text': 'donkey', 'score': 2},
        {'text': 'monkey', 'score': 1}
      ],
    },
    {
      'questionText': "What's your favorite food?",
      'answers': [
        {'text': 'pasta', 'score': 5},
        {'text': 'duck', 'score': 8},
        {'text': 'water', 'score': 2},
        {'text': 'soup', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('no more questions');
    }
  }

  @override //decorator provided by dart and make the code clearer and cleaner
  //deliberately overriding build method which exists and its a good practice
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
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
