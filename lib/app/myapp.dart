import 'package:flutter/material.dart';
import 'package:tppratique/widgets/pages/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: new MyHomePage(
           title: ("Page d'acceuil"),
      ),
    );
  }
}