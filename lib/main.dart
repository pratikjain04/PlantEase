import 'package:plantease/ui/screens/home.dart';
import 'package:plantease/ui/screens/upload.dart';

import 'ui/app.dart';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      title: 'Plantease',
      routes: <String, WidgetBuilder> {

        '/Home': (BuildContext context) => HomePage(),
        '/Image': (BuildContext context) => ImageUpload()
      },
    ));
