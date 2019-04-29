import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:othello_story/main.dart';
import 'package:othello_story/text.dart';


class ActFivePage extends StatefulWidget {
  @override
  _ActFivePageState createState() => _ActFivePageState();
}

class _ActFivePageState extends State<ActFivePage> {

  bool _visible = false;

  String _text = Texts.a5s1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFF2d3447),
        elevation: 0.0,
        title: new Text("Act V - Swipe to see next →", style: TextStyle(color: Colors.white),)
      ),
      floatingActionButton: new Visibility(
        visible: _visible,
        child: new FloatingActionButton.extended(
          icon: new Container(),
          label: new Text("The End"),
          backgroundColor: Color(0xFF1b1e44),
          onPressed: () {
            router.navigateTo(context, 'home', transition: TransitionType.native);
          },
        )
      ),
      backgroundColor: Color(0xFF2d3447),
      body: Column(
        children: <Widget>[
          new Expanded(
            child: new PageView(
              children: <Widget>[
                new ActFiveSceneOne(),
              ],
            ),
          ),
          Container(
            height: 250.0,
            child: new SingleChildScrollView(
              padding: EdgeInsets.all(8.0),
              child: new Text(
                _text,
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}

class ActFiveSceneOne extends StatefulWidget {
  @override
  _ActFiveSceneOneState createState() => _ActFiveSceneOneState();
}

class _ActFiveSceneOneState extends State<ActFiveSceneOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Container(
            height: 300.0,
            child: new FlareActor(
              'assets/a1s3.flr',
              animation: 'go',
            ),
          ),
        ],
      )
    );
  }
}
