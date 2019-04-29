import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:othello_story/main.dart';

class SceneSelectionPage extends StatefulWidget {
  @override
  _SceneSelectionPageState createState() => _SceneSelectionPageState();
}

class _SceneSelectionPageState extends State<SceneSelectionPage> {
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
              "Scene Selection",
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
                router.navigateTo(context, 'intro-page', transition: TransitionType.native);
              },
              child: new Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                color: Color(0xFF2d3447),
                elevation: 6.0,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: new Text(
                    "Intro",
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
                router.navigateTo(context, '/act-one', transition: TransitionType.native);
              },
              child: new Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                color: Color(0xFF2d3447),
                elevation: 6.0,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: new Text(
                    "Act I",
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
                router.navigateTo(context, '/act-two', transition: TransitionType.native);
              },
              child: new Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                color: Color(0xFF2d3447),
                elevation: 6.0,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: new Text(
                    "Act II",
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
                router.navigateTo(context, '/act-three', transition: TransitionType.native);
              },
              child: new Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                color: Color(0xFF2d3447),
                elevation: 6.0,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: new Text(
                    "Act III",
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
                router.navigateTo(context, '/act-four', transition: TransitionType.native);
              },
              child: new Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                color: Color(0xFF2d3447),
                elevation: 6.0,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: new Text(
                    "Act IV",
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
                router.navigateTo(context, '/act-five', transition: TransitionType.native);
              },
              child: new Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                color: Color(0xFF2d3447),
                elevation: 6.0,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: new Text(
                    "Act V",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
