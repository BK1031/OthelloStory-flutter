import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:othello_story/main.dart';
import 'package:othello_story/text.dart';


class ActTwoPage extends StatefulWidget {
  @override
  _ActTwoPageState createState() => _ActTwoPageState();
}

class _ActTwoPageState extends State<ActTwoPage> {

  bool _visible = false;

  String _text = Texts.a2s1;

  void onPageChange(int index) {
    if (index == 0) {
      setState(() {
        _text = Texts.a2s1;
        _visible = false;
      });
    }
    else if (index == 1) {
      setState(() {
        _text = Texts.a2s2;
        _visible = false;
      });
    }
    else if (index == 2) {
      setState(() {
        _text = Texts.a2s3;
        _visible = false;
      });
    }
    else if (index == 3) {
      setState(() {
        _text = Texts.a2s4;
        _visible = false;
      });
    }
    else if (index == 4) {
      setState(() {
        _text = Texts.a2s5;
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
            router.navigateTo(context, 'act-three', transition: TransitionType.native);
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
                new ActTwoSceneOne(),
                new ActTwoSceneTwo(),
                new ActTwoSceneThree(),
                new ActTwoSceneFour(),
                new ActTwoSceneFive()
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

class ActTwoSceneOne extends StatefulWidget {
  @override
  _ActTwoSceneOneState createState() => _ActTwoSceneOneState();
}

class _ActTwoSceneOneState extends State<ActTwoSceneOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Container(
            height: 350.0,
            child: new FlareActor(
              'assets/cassio.flr',
              animation: 'hip',
            ),
          ),
        ],
      )
    );
  }
}

class ActTwoSceneTwo extends StatefulWidget {
  @override
  _ActTwoSceneTwoState createState() => _ActTwoSceneTwoState();
}

class _ActTwoSceneTwoState extends State<ActTwoSceneTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Container(
            height: 150.0,
            child: new FlareActor(
              'assets/a1s4.flr',
              animation: 'go',
            ),
          ),
          Container(
            height: 150.0,
            child: new FlareActor(
              'assets/desdemona.flr',
              animation: 'hip',
            ),
          ),
        ],
      )
    );
  }
}

class ActTwoSceneThree extends StatefulWidget {
  @override
  _ActTwoSceneThreeState createState() => _ActTwoSceneThreeState();
}

class _ActTwoSceneThreeState extends State<ActTwoSceneThree> {
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

class ActTwoSceneFour extends StatefulWidget {
  @override
  _ActTwoSceneFourState createState() => _ActTwoSceneFourState();
}

class _ActTwoSceneFourState extends State<ActTwoSceneFour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Container(
            height: 150.0,
            child: new FlareActor(
              'assets/a1s4.flr',
              animation: 'go',
            ),
          ),
          Container(
            height: 150.0,
            child: new FlareActor(
              'assets/cassio.flr',
              animation: 'hip',
            ),
          ),
        ],
      )
    );
  }
}

class ActTwoSceneFive extends StatefulWidget {
  @override
  _ActTwoSceneFiveState createState() => _ActTwoSceneFiveState();
}

class _ActTwoSceneFiveState extends State<ActTwoSceneFive> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Row(
        children: <Widget>[
          Container(
            width: 200.0,
            child: new FlareActor(
              'assets/othello.flr',
              animation: 'hip',
            ),
          ),
          Container(
            width: 200.0,
            child: new FlareActor(
              'assets/cassio.flr',
              animation: 'idle',
            ),
          ),
        ],
      )
    );
  }
}
