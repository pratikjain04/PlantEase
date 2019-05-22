import 'package:plantease/ui/screens/home.dart';

import 'ui/app.dart';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {

        '/Home': (BuildContext context) => HomePage(),

      },
    ));
