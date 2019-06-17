import 'package:drinknflix/series_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

Widget Function(Widget) s = (Widget t) => Scaffold(body: t);

main() {
  final router = Router();
  final listHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return s(SeriesListScreen());
  });
  router.define('/', handler: listHandler);

  runApp(new MaterialApp(
    initialRoute: '/',
    onGenerateRoute: router.generator
  ));
}