import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:fluro/fluro.dart';
import 'package:othello_story/main.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  bool _visible = false;

  void onPageChange(int index) {
    if (index == 4) {
      setState(() {
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
      ),
      floatingActionButton: new Visibility(
        visible: _visible,
        child: new FloatingActionButton.extended(
          icon: new Container(),
          label: new Text("Next Act"),
          backgroundColor: Color(0xFF1b1e44),
          onPressed: () {
            router.navigateTo(context, 'act-one', transition: TransitionType.native);
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
                new OthelloPage(),
                new DesdemonaPage(),
                new BrabantioPage(),
                new IagoPage(),
                new CassioPage()
              ],
            ),
          ),
          Container(child: new Text("Swipe to see next -->", style: TextStyle(color: Colors.white),), height: 50.0,)
        ],
      )
    );
  }
}

class OthelloPage extends StatefulWidget {
  @override
  _OthelloPageState createState() => _OthelloPageState();
}

class _OthelloPageState extends State<OthelloPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          new Text(
            "Othello",
            style: TextStyle(fontSize: 35.0, color: Colors.white),
          ),
          new Padding(padding: EdgeInsets.all(16.0),),
          Container(
            height: 300.0,
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

class DesdemonaPage extends StatefulWidget {
  @override
  _DesdemonaPageState createState() => _DesdemonaPageState();
}

class _DesdemonaPageState extends State<DesdemonaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          new Text(
            "Desdemona",
            style: TextStyle(fontSize: 35.0, color: Colors.white),
          ),
          new Padding(padding: EdgeInsets.all(16.0),),
          Container(
            height: 300.0,
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

class BrabantioPage extends StatefulWidget {
  @override
  _BrabantioPageState createState() => _BrabantioPageState();
}

class _BrabantioPageState extends State<BrabantioPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          new Text(
            "Brabantio",
            style: TextStyle(fontSize: 35.0, color: Colors.white),
          ),
          new Padding(padding: EdgeInsets.all(16.0),),
          Container(
            height: 300.0,
            child: new FlareActor(
              'assets/brabantio.flr',
              animation: 'idle',
            ),
          ),
        ],
      )
    );
  }
}

class IagoPage extends StatefulWidget {
  @override
  _IagoPageState createState() => _IagoPageState();
}

class _IagoPageState extends State<IagoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          new Text(
            "Iago",
            style: TextStyle(fontSize: 35.0, color: Colors.white),
          ),
          new Padding(padding: EdgeInsets.all(16.0),),
          Container(
            height: 300.0,
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

class CassioPage extends StatefulWidget {
  @override
  _CassioPageState createState() => _CassioPageState();
}

class _CassioPageState extends State<CassioPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          new Text(
            "Cassio",
            style: TextStyle(fontSize: 35.0, color: Colors.white),
          ),
          new Padding(padding: EdgeInsets.all(16.0),),
          Container(
            height: 300.0,
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