import 'package:flutter/material.dart';
import 'package:todo_app/styles/Theme.dart';

import 'homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo Demo',
      theme: MyTheme.light,
      initialRoute: Home.routeName,
      routes: {
        Home.routeName:(context) => Home(),
      },
    );
  }
}

