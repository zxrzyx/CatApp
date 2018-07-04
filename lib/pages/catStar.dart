import 'package:flutter/material.dart';

class CatStar extends StatefulWidget {
  @override
  State createState() {
    return new CatStarState();
  }
}

class CatStarState extends State<CatStar> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("明星🐱"),
      ),

      body: new Center(
        child: new Text("列表"),


        
      ),
    );
  }
}