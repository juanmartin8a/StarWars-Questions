import 'package:flutter/material.dart';
import 'components/ImageContainer.dart';
import 'components/BottomSheet.dart';
import 'formScreens/Questions.dart';
import 'formScreens/Results.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  var _questionIndex = 0;
  var _finalScore = 0;
  bool _isReady = false;

  final _questions = const [
    {
      'questionText': 'ORDER OR JUSTICE',
      'answers': [
        {'text': 'Order', 'score': 5},
        {'text': 'Justice', 'score': 10},
      ],
    },
    {
      'questionText': 'WHAT\'S YOUR FAVORITE LIGHT SABER COLOR',
      'answers': [
        {'text': 'Green', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 10},
        {'text': 'Purple', 'score': 10},
        {'text': 'Yellow', 'score': 10},
      ],
    },
    {
      'questionText': 'CHOOSE YOUR LEADER',
      'answers': [
        {'text': 'Darth Vader', 'score': 5},
        {'text': 'Luke Skywalker', 'score': 10},
      ],
    },
    {
      'questionText': 'DAY OR NIGHT',
      'answers': [
        {'text': 'Day', 'score': 10},
        {'text': 'Night', 'score': 5},
      ],
    },
    {
      'questionText': 'WOULD YOU RATHER BE IN',
      'answers': [
        {'text': 'Star Destroyer', 'score': 5},
        {'text': 'Millennium Falcon', 'score': 10},
      ],
    },
  ];

  void _isReadyFunction() {
    setState(() {
      _isReady = true;
    });
  }

  void _restart() {
    setState(() {
      _isReady = false;
      _questionIndex = 0;
      _finalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _finalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No More Questions!');
    }
  }
  _conditions(BuildContext context) {
    if (_questionIndex < _questions.length && _isReady == true) {
      return Questions(
            questions: _questions,
            questionIndex: _questionIndex,
            answerQuestion: _answerQuestion,
      ); 
    } else if (_questionIndex >= _questions.length && _isReady == true) {
      return Results(_finalScore, () => _restart());
    } else {
      return ImageContainer(() => _isReadyFunction());
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(32.0)),
            ), 
            builder: (context) {
             return CustomBottomSheet();
          });
        },
        child: _conditions(context),
        /*_questionIndex < _questions.length && _isReady == true // I think this method can be used for just if and else.
          ? Questions(
            questions: _questions,
            questionIndex: _questionIndex,
            answerQuestion: _answerQuestion,
          ) 
          : ImageContainer(() => isReadyFunction())*/
      ),
    );
  }
}
