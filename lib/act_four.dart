import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:othello_story/main.dart';
import 'package:othello_story/text.dart';


class ActFourPage extends StatefulWidget {
  @override
  _ActFourPageState createState() => _ActFourPageState();
}

class _ActFourPageState extends State<ActFourPage> {

  bool _visible = false;

  String _text = Texts.a4s1;

  void onPageChange(int index) {
    if (index == 0) {
      setState(() {
        _text = Texts.a4s1;
        _visible = false;
      });
    }
    else if (index == 1) {
      setState(() {
        _text = Texts.a4s2;
        _visible = false;
      });
    }
    else if (index == 2) {
      setState(() {
        _text = Texts.a4s3;
        _visible = false;
      });
    }
    else if (index == 3) {
      setState(() {
        _text = Texts.a4s4;
        _visible = false;
      });
    }
    else if (index == 4) {
      setState(() {
        _text = Texts.a4s5;
        _visible = false;
      });
    }
    else if (index == 5) {
      setState(() {
        _text = Texts.a4s6;
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
        title: new Text("Act IV - Swipe to see next →", style: TextStyle(color: Colors.white),)
      ),
      floatingActionButton: new Visibility(
        visible: _visible,
        child: new FloatingActionButton.extended(
          icon: new Container(),
          label: new Text("Next Act"),
          backgroundColor: Color(0xFF1b1e44),
          onPressed: () {
            router.navigateTo(context, 'act-five', transition: TransitionType.native);
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
                new ActFourSceneOne(),
                new ActFourSceneTwo(),
                new ActFourSceneThree(),
                new ActFourSceneFour(),
                new ActFourSceneFive(),
                new ActFourSceneSix(),
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

class ActFourSceneOne extends StatefulWidget {
  @override
  _ActFourSceneOneState createState() => _ActFourSceneOneState();
}

class _ActFourSceneOneState extends State<ActFourSceneOne> {
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

class ActFourSceneTwo extends StatefulWidget {
  @override
  _ActFourSceneTwoState createState() => _ActFourSceneTwoState();
}

class _ActFourSceneTwoState extends State<ActFourSceneTwo> {
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
              animation: 'hip',
            ),
          ),
        ],
      )
    );
  }
}

class ActFourSceneThree extends StatefulWidget {
  @override
  _ActFourSceneThreeState createState() => _ActFourSceneThreeState();
}

class _ActFourSceneThreeState extends State<ActFourSceneThree> {
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
              'assets/emelia.flr',
              animation: 'idle',
            ),
          ),
        ],
      )
    );
  }
}

class ActFourSceneFour extends StatefulWidget {
  @override
  _ActFourSceneFourState createState() => _ActFourSceneFourState();
}

class _ActFourSceneFourState extends State<ActFourSceneFour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Row(
        children: <Widget>[
          Container(
            width: 200.0,
            child: new FlareActor(
              'assets/rodrigo.flr',
              animation: 'idle',
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

class ActFourSceneFive extends StatefulWidget {
  @override
  _ActFourSceneFiveState createState() => _ActFourSceneFiveState();
}

class _ActFourSceneFiveState extends State<ActFourSceneFive> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Container(
            height: 250.0,
            child: new Row(
        children: <Widget>[
          Container(
            width: 200.0,
            child: new FlareActor(
              'assets/rodrigo.flr',
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
          ),
          new Padding(padding: EdgeInsets.all(10.0),),
          Container(
            height: 150.0,
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

class ActFourSceneSix extends StatefulWidget {
  @override
  _ActFourSceneSixState createState() => _ActFourSceneSixState();
}

class _ActFourSceneSixState extends State<ActFourSceneSix> {
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
              animation: 'hip',
            ),
          ),
        ],
      )
    );
  }
}
