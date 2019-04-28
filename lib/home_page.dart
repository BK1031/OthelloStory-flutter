import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter/widgets.dart';
import 'package:fluro/fluro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFF1b1e44),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xFF1b1e44),
      body: Container(
        padding: new EdgeInsets.all(16.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              "Othello",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0
              ),
              //0xFF1b1e44
            ),
            new Divider(color: Colors.blueGrey,),
            new Padding(padding: EdgeInsets.all(8.0),),
            new GestureDetector(
              onTap: () {
                router.navigateTo(context, 'intro-page');
              },
              child: new Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                color: Color(0xFF2d3447),
                elevation: 6.0,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: new Text(
                    "Start Reading",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),
                  ),
                ),
              ),
            ),
            new Padding(padding: EdgeInsets.all(8.0),),
            new GestureDetector(
              onTap: () {
                router.navigateTo(context, '/scene-selection');
              },
              child: new Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                color: Color(0xFF2d3447),
                elevation: 6.0,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: new Text(
                    "Scene Selection",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
