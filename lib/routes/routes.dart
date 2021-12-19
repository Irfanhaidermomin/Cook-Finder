import 'package:flutter/material.dart';
import 'package:cookfinder/pages/home_page.dart';

Map<String, WidgetBuilder> getAplicationsRoutes() => <String, WidgetBuilder>{
      '/': (BuildContext context) => HomePage(),
    };
