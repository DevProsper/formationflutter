import 'package:flutter/material.dart';

class MyButtonPage extends StatefulWidget {
  const MyButtonPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyButtonPage> createState() => _MyButtonPageState();
}

class _MyButtonPageState extends State<MyButtonPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Center(
        child: new Text("Page boutton"),
      ),
    );
  }
}