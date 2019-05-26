import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  double uniWidth;
  double uniHeight;

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    uniWidth = MediaQuery.of(context).size.width;
    uniHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              new Container(
                height: uniHeight / 3.25,
                child: new Center(
                  child: new Text(
                    "PlantEase",
                    style: new TextStyle(fontSize: 40.0, color: Colors.white),
                  ),
                ),
                color: Colors.teal,
              ),
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.5, 0.0, 0.0)),
              new Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.language,
                      color: Colors.teal,
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    "Change Language",
                    style: new TextStyle(fontSize: 15, color: Colors.teal),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.info_outline,
                      color: Colors.teal,
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    "How To Use App",
                    style: new TextStyle(fontSize: 15, color: Colors.teal),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.mail_outline,
                      color: Colors.teal,
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    "Contact Us",
                    style: new TextStyle(fontSize: 15, color: Colors.teal),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.teal,
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    "Share App",
                    style: new TextStyle(fontSize: 15, color: Colors.teal),
                  )
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
            )),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: uniHeight / 25),
                Container(
                    padding: EdgeInsets.only(
                        left: uniWidth / 14.4, right: uniWidth / 14.4),
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
                      _buildCard("Graoes", 'assets/grapes-2656259_1280.jpg'),
                      _buildCard("Apple",
                          "assets/2b74874798de42d5de6e4711150946d3.jpg"),
                      _buildCard("Cherry", 'assets/Cherry_Tree_-_Stella.jpg'),
                      _buildCard("Corn",
                          "assets/BONNIE-PLANTS_corn-iStock-857670630-2400px.jpg"),
                      _buildCard("Orange", "assets/fruit-orange.jpg"),
                      _buildCard("Peach", "assets/peach-seedling-350x322.jpg"),
                      _buildCard(
                          "Pepper", "assets/image1_2_NNDIjA1438463783480.jpg"),
                      _buildCard("Potato", "assets/POT-270z.jpg"),
                      _buildCard("Squash",
                          "assets/winter-squash-varieties-020217.jpg"),
                      _buildCard("Strawberry", "assets/13853.jpg"),
                      _buildCard("Tomato", "assets/tomato.jpg")
                    ])
              ],
            ),
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => new AlertDialog(
                    title: Center(
                        child: Text(
                      "Enter Your Crop Name",
                      style: TextStyle(
                          fontSize: uniWidth / 18, fontWeight: FontWeight.w400),
                    )),
                    content: new Container(
                      height: uniHeight / 3.5,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(top: uniHeight / 100)),
                            Theme(
                              data: ThemeData(primaryColor: Colors.teal),
                              child: TextFormField(
                                controller: controller,
                                textInputAction: TextInputAction.done,
                                onEditingComplete: (){},
                                decoration: new InputDecoration(
                                  labelText: "Crop",
                                  hintText: 'Apple',
                                  fillColor: Colors.white,
                                  labelStyle: TextStyle(color: Colors.teal),
                                  hintStyle: TextStyle(color: Colors.black38),
                                  border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(25.0),
                                    borderSide: new BorderSide(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                cursorColor: Colors.teal,
                                validator: (text) {
                                  if (text.isEmpty)
                                    return 'Please enter your crop name';
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                FlatButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    _formKey.currentState.save();
                                    if(_formKey.currentState.validate())
                                      Navigator.pushNamed(context, '/Image');
                                  },
                                  child: new Text(
                                    "Submit",
                                    style: TextStyle(color: Colors.teal),
                                  ),
                                ),
                                FlatButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: new Text(
                                    "Cancel",
                                    style: TextStyle(color: Colors.teal),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )));
          },
          child: new Icon(
            Icons.add_circle_outline,
            color: Colors.white,
          ),
          backgroundColor: Colors.teal,
        ));
  }

  Widget _buildCard(String name, String status) {
    //todo: Add Navigation to Image Picking Screen

    return GestureDetector(
      onTap: () {
        //todo: Pass the selected image as parameter for the ML Model to process the image accordingly in a optimised manner

        Navigator.of(context).pushNamed('/Image');
      },
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 3.0,
          child: Column(children: <Widget>[
            SizedBox(
              height: uniHeight / 53,
            ),
            Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(status), fit: BoxFit.fill))),
            Center(
              child: Text(
                name,
                style:
                    TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
              ),
            ),
          ])),
    );
  }
}
