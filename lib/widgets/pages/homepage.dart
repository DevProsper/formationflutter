import 'package:flutter/material.dart';
import '../components/nav_drawer.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Asnec-it"),
        ),
        body: Center(
            child: Center(child: Text("Home page"))
        ),
        drawer: NavDrawer()
    );
  }
}
