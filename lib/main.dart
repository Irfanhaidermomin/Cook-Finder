import 'package:flutter/material.dart';
import 'package:cookfinder/palette/palette.dart';
import 'package:cookfinder/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'cookfinder',
      theme: ThemeData(
        primarySwatch: Palette.customColor,
      ),
      initialRoute: '/',
      routes: getAplicationsRoutes(),
    );
  }
}
