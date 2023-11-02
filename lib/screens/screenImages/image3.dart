import 'package:flutter/material.dart';

class Image3 extends StatelessWidget {
  final String _assetPath;
  Image3(this._assetPath);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.red,),
      constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height),
      child: Expanded(
        child: Image.asset(
          _assetPath,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}