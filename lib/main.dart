import 'package:flutter/material.dart';
import 'package:othello_story/act_one.dart';
import 'package:othello_story/act_three.dart';
import 'package:othello_story/act_two.dart';
import 'package:othello_story/home_page.dart';
import 'package:fluro/fluro.dart';
import 'package:othello_story/intro_page.dart';
import 'package:othello_story/scene_selection.dart';

final router = Router();

void main() {

  router.define('/intro-page', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new IntroPage();
  }));

  router.define('/act-one', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new ActOnePage();
  }));

  router.define('/act-two', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new ActTwoPage();
  }));

  router.define('/act-three', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new ActThreePage();
  }));


  router.define('/scene-selection', handler: new Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return new SceneSelectionPage();
  }));

  runApp(new MaterialApp(
    home: new HomePage(),
    onGenerateRoute: router.generator
  ));
}

