import 'package:flutter/material.dart';
import 'package:tppratique/widgets/components/nav_drawer.dart';

class profile extends StatelessWidget {
  static const String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        drawer: NavDrawer(),
        body: Center(
            child: Text("Page de profile")
        ));
  }
}