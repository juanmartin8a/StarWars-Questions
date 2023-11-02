import 'package:flutter/material.dart';
import 'screenImages/image2.dart';

class ImageTwo extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image2("assets/images/starwars1.png"),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black12,),
                    constraints: BoxConstraints.expand(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                    ),
                    padding: EdgeInsets.only(left: 15, top: 24,),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        onPressed:() => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}