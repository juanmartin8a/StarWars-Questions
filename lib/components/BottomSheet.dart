import 'package:flutter/material.dart';

import '../screens/FirstImage.dart';
import '../screens/ForthImage.dart';
import '../screens/SecondImage.dart';
import '../screens/ThirdImage.dart';

class CustomBottomSheet extends StatelessWidget {
  Future navigateToFirstImage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ImageOne()));
  }

  Future navigateToSecondImage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ImageTwo()));
  }

  Future navigateToThirdImage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ImageThree()));
  }

  Future navigateToForthImage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ImageFour()));
  }
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(32.0), 
            topRight: const Radius.circular(32.0),
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Wrap(
          children: [
            ListTile(
              title: Text('Image 1', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.pop(context);
                navigateToFirstImage(context);
              },
            ),
            ListTile(
              title: Text('Image 2', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.pop(context);
                navigateToSecondImage(context);
              },
            ),
            ListTile(
              title: Text('Image 3', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.pop(context);
                navigateToThirdImage(context);
              },
            ),
            ListTile(
              title: Text('Image 4', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.pop(context);
                navigateToForthImage(context);
              },
            ),
          ],
        )
      )
    );
  }
}