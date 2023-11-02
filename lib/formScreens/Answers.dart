import 'package:flutter/material.dart';

class Answers extends StatelessWidget {

  final Function answerBtn;
  final String answerText;

  Answers(this.answerBtn, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 20,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 3, color: Colors.amber), // for using hex just change # for 0xFF const Color(0xFFFFE81F)
            ),
            child: FlatButton(
              onPressed: answerBtn,
              child: Text(
                answerText,
                style: TextStyle(fontSize: 20, color: Colors.amber),
              ),
            )
          ),
        ),
      ],
    );
  }
}