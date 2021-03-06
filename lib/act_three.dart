import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:othello_story/main.dart';
import 'package:othello_story/text.dart';


class ActThreePage extends StatefulWidget {
  @override
  _ActThreePageState createState() => _ActThreePageState();
}

class _ActThreePageState extends State<ActThreePage> {

  bool _visible = false;

  String _text = Texts.a3s1;

  void onPageChange(int index) {
    if (index == 0) {
      setState(() {
        _text = Texts.a3s1;
        _visible = false;
      });
    }
    else if (index == 1) {
      setState(() {
        _text = Texts.a3s2;
        _visible = false;
      });
    }
    else if (index == 2) {
      setState(() {
        _text = Texts.a3s3;
        _visible = false;
      });
    }
    else if (index == 3) {
      setState(() {
        _text = Texts.a3s4;
        _visible = false;
      });
    }
    else if (index == 4) {
      setState(() {
        _text = Texts.a3s5;
        _visible = false;
      });
    }
    else if (index == 5) {
      setState(() {
        _text = Texts.a3s6;
        _visible = false;
      });
    }
    else if (index == 6) {
      setState(() {
        _text = Texts.a3s7;
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
        title: new Text("Act III - Swipe to see next →", style: TextStyle(color: Colors.white),)
      ),
      floatingActionButton: new Visibility(
        visible: _visible,
        child: new FloatingActionButton.extended(
          icon: new Container(),
          label: new Text("Next Act"),
          backgroundColor: Color(0xFF1b1e44),
          onPressed: () {
            router.navigateTo(context, 'act-four', transition: TransitionType.native);
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
                new ActThreeSceneOne(),
                new ActThreeSceneTwo(),
                new ActThreeSceneThree(),
                new ActThreeSceneFour(),
                new ActThreeSceneFive(),
                new ActThreeSceneSix(),
                new ActThreeSceneSeven()
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

class ActThreeSceneOne extends StatefulWidget {
  @override
  _ActThreeSceneOneState createState() => _ActThreeSceneOneState();
}

class _ActThreeSceneOneState extends State<ActThreeSceneOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Container(
            height: 150.0,
            child: new FlareActor(
              'assets/cassio.flr',
              animation: 'idle',
            ),
          ),
          new Padding(padding: EdgeInsets.all(10.0),),
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

class ActThreeSceneTwo extends StatefulWidget {
  @override
  _ActThreeSceneTwoState createState() => _ActThreeSceneTwoState();
}

class _ActThreeSceneTwoState extends State<ActThreeSceneTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Container(
            height: 150.0,
            child: new FlareActor(
              'assets/desdemona.flr',
              animation: 'idle',
            ),
          ),
          new Padding(padding: EdgeInsets.all(10.0),),
          Container(
            height: 150.0,
            child: new FlareActor(
              'assets/othello.flr',
              animation: 'idle',
            ),
          ),
        ],
      )
    );
  }
}

class ActThreeSceneThree extends StatefulWidget {
  @override
  _ActThreeSceneThreeState createState() => _ActThreeSceneThreeState();
}

class _ActThreeSceneThreeState extends State<ActThreeSceneThree> {
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
              'assets/iago.flr',
              animation: 'idle',
            ),
          ),
        ],
      )
    );
  }
}

class ActThreeSceneFour extends StatefulWidget {
  @override
  _ActThreeSceneFourState createState() => _ActThreeSceneFourState();
}

class _ActThreeSceneFourState extends State<ActThreeSceneFour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Container(
            height: 150.0,
            child: new FlareActor(
              'assets/othello.flr',
              animation: 'hip',
            ),
          ),
          new Padding(padding: EdgeInsets.all(10.0),),
          Container(
            height: 150.0,
            child: new FlareActor(
              'assets/desdemona.flr',
              animation: 'idle',
            ),
          ),
        ],
      )
    );
  }
}

class ActThreeSceneFive extends StatefulWidget {
  @override
  _ActThreeSceneFiveState createState() => _ActThreeSceneFiveState();
}

class _ActThreeSceneFiveState extends State<ActThreeSceneFive> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Row(
        children: <Widget>[
          Container(
            width: 200.0,
            child: new FlareActor(
              'assets/emelia.flr',
              animation: 'hip',
            ),
          ),
          Container(
            width: 200.0,
            child: new FlareActor(
              'assets/iago.flr',
              animation: 'idle',
            ),
          ),
        ],
      )
    );
  }
}

class ActThreeSceneSix extends StatefulWidget {
  @override
  _ActThreeSceneSixState createState() => _ActThreeSceneSixState();
}

class _ActThreeSceneSixState extends State<ActThreeSceneSix> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Container(
            height: 150.0,
            child: new FlareActor(
              'assets/iago.flr',
              animation: 'idle',
            ),
          ),
          new Padding(padding: EdgeInsets.all(10.0),),
          Container(
            height: 150.0,
            child: new FlareActor(
              'assets/othello.flr',
              animation: 'hip',
            ),
          ),
        ],
      )
    );
  }
}

class ActThreeSceneSeven extends StatefulWidget {
  @override
  _ActThreeSceneSevenState createState() => _ActThreeSceneSevenState();
}

class _ActThreeSceneSevenState extends State<ActThreeSceneSeven> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Container(
            height: 150.0,
            child: new FlareActor(
              'assets/othello.flr',
              animation: 'hip',
            ),
          ),
          new Padding(padding: EdgeInsets.all(10.0),),
          Container(
            height: 150.0,
            child: new FlareActor(
              'assets/desdemona.flr',
              animation: 'idle',
            ),
          ),
        ],
      )
    );
  }
}