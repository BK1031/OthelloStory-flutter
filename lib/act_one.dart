import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:othello_story/main.dart';
import 'package:othello_story/text.dart';


class ActOnePage extends StatefulWidget {
  @override
  _ActOnePageState createState() => _ActOnePageState();
}

class _ActOnePageState extends State<ActOnePage> {

  bool _visible = false;

  String _text = Texts.a1s1;

  void onPageChange(int index) {
    if (index == 0) {
      setState(() {
        _text = Texts.a1s1;
        _visible = false;
      });
    }
    else if (index == 1) {
      setState(() {
        _text = Texts.a1s2;
        _visible = false;
      });
    }
    else if (index == 2) {
      setState(() {
        _text = Texts.a1s3;
        _visible = false;
      });
    }
    else if (index == 3) {
      setState(() {
        _text = Texts.a1s4;
        _visible = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFF2d3447),
        elevation: 0.0,
        title: new Text("Swipe to see next →", style: TextStyle(color: Colors.white),)
      ),
      floatingActionButton: new Visibility(
        visible: _visible,
        child: new FloatingActionButton.extended(
          icon: new Container(),
          label: new Text("Next Act"),
          backgroundColor: Color(0xFF1b1e44),
          onPressed: () {
            router.navigateTo(context, 'act-two', transition: TransitionType.native);
          },
        )
      ),
      backgroundColor: Color(0xFF2d3447),
      body: Column(
        children: <Widget>[
          new Expanded(
            child: new PageView(
              onPageChanged: onPageChange,
              children: <Widget>[
                new ActOneSceneOne(),
                new ActOneSceneTwo(),
                new ActOneSceneThree(),
                new ActOneSceneFour(),
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
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}

class ActOneSceneOne extends StatefulWidget {
  @override
  _ActOneSceneOneState createState() => _ActOneSceneOneState();
}

class _ActOneSceneOneState extends State<ActOneSceneOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Container(
            height: 350.0,
            child: new FlareActor(
              'assets/a1s1.flr',
              animation: 'argue',
            ),
          ),
        ],
      )
    );
  }
}

class ActOneSceneTwo extends StatefulWidget {
  @override
  _ActOneSceneTwoState createState() => _ActOneSceneTwoState();
}

class _ActOneSceneTwoState extends State<ActOneSceneTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Container(
            height: 350.0,
            child: new FlareActor(
              'assets/a1s2.flr',
              animation: 'go',
            ),
          ),
        ],
      )
    );
  }
}

class ActOneSceneThree extends StatefulWidget {
  @override
  _ActOneSceneThreeState createState() => _ActOneSceneThreeState();
}

class _ActOneSceneThreeState extends State<ActOneSceneThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Container(
            height: 350.0,
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

class ActOneSceneFour extends StatefulWidget {
  @override
  _ActOneSceneFourState createState() => _ActOneSceneFourState();
}

class _ActOneSceneFourState extends State<ActOneSceneFour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Container(
            height: 350.0,
            child: new FlareActor(
              'assets/a1s4.flr',
              animation: 'go',
            ),
          ),
        ],
      )
    );
  }
}