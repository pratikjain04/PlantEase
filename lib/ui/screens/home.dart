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

  @override
  Widget build(BuildContext context) {
    uniWidth = MediaQuery.of(context).size.width;
    uniHeight = MediaQuery.of(context).size.height;

    return new Scaffold(
      drawer: new Drawer(
        child: Column(
          children: <Widget>[],
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: uniHeight/25),
              Container(
                  padding: EdgeInsets.only(left: uniWidth/14.4, right: uniWidth/14.4),
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
                height: uniHeight/64,
              ),
              GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: uniHeight / 320,
                mainAxisSpacing: uniHeight / 300,
                shrinkWrap: true,
                children: <Widget>[
                  _buildCard("Grapes",
                      'https://7gigzxopz0uiqxo1-zippykid.netdna-ssl.com/wp-content/uploads/2018/02/grapes-2656259_1280.jpg'),
                  _buildCard("Apple",
                      "https://cdn.newsapi.com.au/image/v1/2b74874798de42d5de6e4711150946d3"),
                  _buildCard("Cherry",
                      'https://www.habitataid.co.uk/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/C/h/Cherry_Tree_-_Stella.JPG'),
                  _buildCard("Corn",
                      "https://edge.bonnieplants.com/www/uploads/20181011003703/BONNIE-PLANTS_corn-iStock-857670630-2400px.jpg"),
                  _buildCard("Orange",
                      "http://www.laceupforchange.org.za/wp-content/uploads/2017/02/fruit-orange.jpg"),
                  _buildCard("Peach",
                      "http://bastet-plants.com/wp-content/uploads/2015/04/peach-seedling-350x322.jpg"),
                  _buildCard("Pepper",
                      "https://eltayseerco.com/wp-content/uploads/2017/10/image1_2_NNDIjA1438463783480.jpg"),
                  _buildCard("Potato",
                      "https://cdn.mr-fothergills.co.uk/product-images/op/z/POT-270z.jpg"),
                  _buildCard("Squash",
                      "https://assets.epicurious.com/photos/5893c1d869bb8db572652050/16:9/w_1280,c_limit/winter-squash-varieties-020217.jpg"),
                  _buildCard(
                      "Strawberry", "https://www.gurneys.com/images/475/13853.jpg"),
                  _buildCard("Tomato",
                      "http://www.daily-mail.co.zm/wp-content/uploads/2014/09/tomato.jpg")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String name, String status) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 3.0,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: uniHeight / 53,
          ),
          Container(
            height: uniHeight / 8,
            width: uniWidth / 4.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.white,
                image: DecorationImage(
                    image: NetworkImage(status), fit: BoxFit.fill)),
          ),
          Expanded(
            child: Center(
              child: Text(
                name,
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildContainer(String option) {
    return Container(
        child: new Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.email),
        )
      ],
    ));
  }
}
