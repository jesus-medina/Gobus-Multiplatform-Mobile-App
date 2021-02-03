import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'ui/pages/main_page.dart';

class GobusApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}