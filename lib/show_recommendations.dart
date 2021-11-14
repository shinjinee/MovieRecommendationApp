import 'package:flutter/material.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({this.rec=""});
  final String rec;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Text(
          rec,
        ),
      ),
    );
  }
}

