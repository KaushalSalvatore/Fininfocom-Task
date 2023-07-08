import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text(
          'Bluetooth',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),

      ),
    );
  }
}