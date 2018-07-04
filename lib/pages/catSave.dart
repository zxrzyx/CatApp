import 'package:flutter/material.dart';

class CatSave extends StatefulWidget {
  @override
  State createState() {
    return new CatSaveState();
  }
}

class CatSaveState extends State<CatSave> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("领养"),
      ),

      body: new SizedBox(
        child: new Card(
          child: new Column(
            children: <Widget>[
              new ListTile(
                title: new Text("北京"),
                onTap: () {
                  Navigator.push(context, new MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return new Scaffold(
                          appBar: new AppBar(
                              title: new Text("123")
                          ),
                          body: new ListTile(),
                        );
                      }
                  ));
                },
              ),
              new Divider(),
              new ListTile(
                title: new Text("四川"),
              ),
              new Divider(),
              new ListTile(
                title: new Text("北京"),
                subtitle: new Text("北京"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}