import 'package:flutter/material.dart';
import 'Answers.dart';

class Questions extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Questions({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion,
  });

  _questionImages(BuildContext context) {
    if (questionIndex == 0) {
      return Container(
        constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/starwars2.jpg"),
            fit: BoxFit.fill,
          )
        )
      );
    } else if (questionIndex == 1) {
      return Container(
        constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/lightsaber.jpg"),
            fit: BoxFit.fill,
          )
        )
      );
    } else if (questionIndex == 2) {
      return Container(
        constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/vaderAndLuke.jpg"),
            fit: BoxFit.fill,
          )
        )
      );
    } else if (questionIndex == 3) {
      return Container(
        constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/rogueone.jpg"),
            fit: BoxFit.fill,
          )
        )
      );
    } else if (questionIndex == 4) {
      return Container(
        constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/starwars1.png"),
            fit: BoxFit.fill,
          )
        )
      );
    }
  }

  _content(BuildContext context) {
    if (questionIndex == 1) {
      return Container(
        padding: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height *0.60),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questions[questionIndex]['questionText'],
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
              textAlign: TextAlign.center,
            ),
            ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
              return Answers(() => answerQuestion(answer['score']), answer['text']);
            }).toList()
          ]
        )
      );
    } else {
      return Container(
        padding: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height *0.35),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questions[questionIndex]['questionText'],
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
              textAlign: TextAlign.center,
            ),
            ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
              return Answers(() => answerQuestion(answer['score']), answer['text']);
            }).toList()
          ]
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              _questionImages(context),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    child: Container(
                      constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width *0.85),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: _content(context),
                      ),
                    ),
                  ),
                ]
              ),
            ],
          )
        ],
      ),
    );
  }
}
