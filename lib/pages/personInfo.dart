import 'package:flutter/material.dart';

class PersonInfo extends StatefulWidget {
  @override
  State createState() {
    return new PersonInfoState();
  }
}

class PersonInfoState extends State<PersonInfo> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("个人信息"),
      ),

      body: new Center(
        child: new Text("列表"),
      ),
    );
  }
}