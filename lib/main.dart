import 'package:flutter/material.dart';
import './pages/catPic.dart';
import './pages/catSave.dart';
import './pages/catStar.dart';
import './pages/personInfo.dart';

void main() => runApp(new HomePage());

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
        home: new Scaffold(
          body: new TabBarView(
            controller: controller,
            children: <Widget>[
              new GridListDemo(),
              new CatSave(),
              new CatStar(),
              new PersonInfo(),
            ],
          ),
          bottomNavigationBar: new Material(
            color: Colors.white,
            child: new TabBar(
              controller: controller,
              tabs: <Widget>[
                new Tab(text: "照片", icon: new Icon(Icons.home)),
                new Tab(text: "领养", icon: new Icon(Icons.message)),
                new Tab(text: "明星", icon: new Icon(Icons.cloud)),
                new Tab(text: "我的", icon: new Icon(Icons.person)),
              ],
            ),
          ),
        )
    );
  }
}