import 'package:flutter/material.dart';

class ImageUpload extends StatefulWidget {
  @override
  _ImageUploadState createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {

  //todo: ImagePicker Code to be added

  double uniHeight;
  double uniWidth;

  @override
  Widget build(BuildContext context) {

    uniWidth = MediaQuery.of(context).size.width;
    uniHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: uniHeight/10),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Container(
                     height: uniHeight/4,
                     width: uniWidth/2.25,
                     decoration: BoxDecoration(
                       color: Colors.white,
                         borderRadius: BorderRadius.circular(10.0),
                       boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5.0, spreadRadius: 5.0), ],
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: <Widget>[
                         Icon(Icons.camera_alt, color: Colors.teal, size: uniWidth/10,),
                         Padding(padding: EdgeInsets.only(top: uniHeight/50)),
                         Padding(
                             padding: EdgeInsets.only(left: uniWidth/50),
                             child: Text('Click Image from Camera', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: uniWidth/18),))
                       ],
                     ),
                 ),
                  Padding(padding: EdgeInsets.only(left: uniWidth/20)),
                  Material(
                    elevation: 2.0,
                    child: Container(
                      height: uniHeight/4,
                      width: uniWidth/2.25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5.0, spreadRadius: 5.0), ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.image, color: Colors.teal, size: uniWidth/10,),
                          Padding(padding: EdgeInsets.only(top: uniHeight/50)),
                          Padding(
                              padding: EdgeInsets.only(left: uniWidth/50),
                              child: Text('Pick Image from Gallery', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: uniWidth/18),))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: uniHeight/5)),
              Center(child: Text('You will get your Image Preview Here', style: TextStyle(color: Colors.black54, fontSize: uniWidth/18),),)
            ],
          ),
        ),
      ),
    );
  }
}
