import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new PageView(
      children: <Widget>[
        new OthelloPage(),
        new DesdemonaPage()
      ],
    ));
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
      child: new FlareActor(
        'assets/othello.flr',
        animation: 'idle',
      ),
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
    return Container();
  }
}
