import 'package:flutter/material.dart';
import 'Image.dart';
import 'Logo.dart';
import '../formScreens/Questions.dart';


class ImageContainer extends StatelessWidget {

  Function isReadyFunction;

  ImageContainer(this.isReadyFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              MainImage("assets/images/starsLogo.jpg"),
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
                      //child: Text('Hellow world', style: TextStyle(fontSize: 20, color: Colors.white))
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Logo("assets/images/Starwarslogopng.png"),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(top: 20,),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(width: 3, color: Colors.amber), // for using hex just change # for 0xFF const Color(0xFFFFE81F)
                                      ),
                                      child: FlatButton(
                                        onPressed: () => isReadyFunction(),
                                        child: Text(
                                          'START',
                                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.amber),
                                        ),
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            ]
                          )
                        )
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
