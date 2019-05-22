import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    title: 'Flutter Demo',
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(
        child: Column(

          children: <Widget>[


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
                        image: NetworkImage(status), fit: BoxFit.fill)
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

  Widget _buildContainer(String option) {
    return Container(
        child: new Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                  Icons.email
              ),

            )
          ],
        )

    );
  }
}

