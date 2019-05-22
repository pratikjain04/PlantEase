import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(
        child: Column(


          children: <Widget>[
            new Container(
              height: 200,
              width: 350,
              child: new Center(
                child: new Text("PlantEase",
                style: new TextStyle(fontSize: 40.0,color: Colors.white),),
              ),
              color: Colors.teal,
            ),
             Padding(padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.5, 0.0, 0.0)),
             new Row(
               children: <Widget>[
                 IconButton(
                   icon: Icon(
                     Icons.language, color: Colors.teal,

                   )
                 ),
                 Text("Change Language", style: new TextStyle(fontSize: 15,color: Colors.teal),)
               ],

             ),
            new Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.info_outline, color: Colors.teal,

                    )
                ),
                Text("How To Use App", style: new TextStyle(fontSize: 15,color: Colors.teal),)
              ],

            ),
            new Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.mail_outline, color: Colors.teal,

                    )
                ),
                Text("Contact Us", style: new TextStyle(fontSize: 15,color: Colors.teal),)
              ],

            ),
            new Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.share, color: Colors.teal,

                    )
                ),
                Text("Share App", style: new TextStyle(fontSize: 15,color: Colors.teal),)
              ],

            )
          ],
        ),
      ),
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text("Plant Ease"),
        elevation: 10.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.format_list_bulleted,
          ),
          color: Colors.white,
        ),


      ),
      body: ListView(

        children: <Widget>[

          SizedBox(height: 40.0),
          Container(
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Select Your Crop",
                    style: TextStyle(
                      color: Colors.grey,

                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              )),
          SizedBox(
            height: 10.0,
          ),
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard("Graoes",
                  'assets/grapes-2656259_1280.jpg'),
              _buildCard("Apple",
                  "assets/2b74874798de42d5de6e4711150946d3.jpg"),
              _buildCard("Cherry",
                  'assets/Cherry_Tree_-_Stella.jpg'),
              _buildCard("Corn",
                  "assets/BONNIE-PLANTS_corn-iStock-857670630-2400px.jpg"),
              _buildCard("Orange",
                  "assets/fruit-orange.jpg"),
              _buildCard("Peach",
                  "assets/peach-seedling-350x322.jpg"),
              _buildCard("Pepper",
                  "assets/image1_2_NNDIjA1438463783480.jpg"),
              _buildCard("Potato",
                  "assets/POT-270z.jpg"),
              _buildCard("Squash",
                  "assets/winter-squash-varieties-020217.jpg"),
              _buildCard(
                  "Strawberry", "assets/13853.jpg"),
              _buildCard("Tomato",
                  "assets/tomato.jpg")

            ],
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String status) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 7.0,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 12.0,
          ),
          Stack(
            children: <Widget>[
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(status), fit: BoxFit.fill)
                ),
              ),
              /* SizedBox(height: 15.0),
              Expanded(
                child: Container(
                  width: 175.0,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey
                  ),
                  child: Center(
                    child: Text(name),
                  ),
                )
              )*/ //yaha pr error hai comment wale code me...expanded me
            ],
          )
        ],
      ),
    );
  }



}



