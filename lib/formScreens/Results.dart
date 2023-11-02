import 'package:flutter/material.dart';

class Results extends StatelessWidget {

  final int finalScore;
  Function resetHandler;

  Results(this.finalScore, this.resetHandler);

  finalResult(BuildContext context) {
    if (finalScore <= 35) { // Dark Side
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/darkSide1.jpg'),
            fit: BoxFit.fill,
          )
        ),
        constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height),
        child: Container(
          decoration: BoxDecoration(
          ),
          constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'You Belong To',
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          child: Text(
                            'The Dark Side',
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber,
                            ),
                            textAlign: TextAlign.center,
                          )
                        )
                      ],
                    ),
                  )
              ),
              Align(
                alignment: Alignment.bottomCenter,
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 50, left: 30, right: 30,),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 3, color: Colors.amber), // for using hex just change # for 0xFF const Color(0xFFFFE81F)
                            ),
                            child: FlatButton(
                              onPressed: resetHandler,
                              child: Text(
                                'Go Back!',
                                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.amber),
                              ),
                            )
                          )
                        )
                      ],
                    )
                  )
              )
            ]
          ))
        )
      );
    } else if (finalScore >= 36) {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/rebelion.jpg'),
            fit: BoxFit.fill,
          )
        ),
        constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height),
        child: Container(
          decoration: BoxDecoration(
          ),
          constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'You Belong To',
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          child: Text(
                            'The Rebelion',
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber,
                            ),
                            textAlign: TextAlign.center,
                          )
                        )
                      ],
                    ),
                  )
              ),
              Align(
                alignment: Alignment.bottomCenter,
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 50, left: 30, right: 30,),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 3, color: Colors.amber), // for using hex just change # for 0xFF const Color(0xFFFFE81F)
                            ),
                            child: FlatButton(
                              onPressed: resetHandler,
                              child: Text(
                                'Go Back!',
                                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.amber),
                              ),
                            )
                          )
                        )
                      ],
                    )
                  )
              )
            ]
          ))
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return finalResult(context);
  }
}