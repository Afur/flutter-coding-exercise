import 'package:flutter/material.dart';
import 'package:spa_coding_exercise/injection.dart';
import 'package:spa_coding_exercise/pages/lookup/lookup_screen.dart';
import 'package:spa_coding_exercise/pages/start/start_page.dart';
import 'package:spa_coding_exercise/values/app_theme.dart';

void main() {
  configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SPA Coding Exercise',
      theme: appTheme(),
      home: LookupPage(),
    );
  }
}
