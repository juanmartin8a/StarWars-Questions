import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String _assetPath;
  Logo(this._assetPath);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.transparent),
      

      child: Image.asset(
          _assetPath,
          
      ),
    );
  }
}