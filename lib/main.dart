import 'package:flutter/material.dart';
import 'package:shoe_shop/cards.dart';
import 'package:shoe_shop/tabs.dart';
import 'package:flutter/services.dart';
void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text(
          "Shoes",
          style: TextStyle(color: Colors.black, fontSize: 25.0),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.black,
              ),
              onPressed: null),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 48.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Tabs("All", true),
                    Tabs("Sneakers", false),
                    Tabs("Football", false),
                    Tabs("Soccer", false),
                    Tabs("Basketball", false),
                    Tabs("Tennis", false),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Cards("red", "assets/images/red.jpg", false, "99"),
              Cards("black", "assets/images/yellow.jpg", true, "89"),
              Cards("blue", "assets/images/blue.jpg", false, "79"),
            ],
          ),
        ),
      ),
    );
  }
}
