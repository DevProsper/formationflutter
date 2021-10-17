import 'package:flutter/material.dart';

class MesRoutes extends StatelessWidget {
static const String routeName = '/buttons';

@override
Widget build(BuildContext context) {
  return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Mes bouttons'),
          centerTitle: true,
        ),
      ));
  }
}