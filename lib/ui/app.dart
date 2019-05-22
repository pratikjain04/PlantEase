import 'dart:async';

import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushNamedAndRemoveUntil('/Home', (Route route) => false);
    });

  }


  //todo: ADDING LOGO

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('PlantEase', style: TextStyle(color: Colors.green, fontSize: 30.0),))
      ),
    );
  }
}
