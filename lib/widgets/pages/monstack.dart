import 'package:flutter/material.dart';

class MonStack extends StatefulWidget {
  const MonStack({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MonStack> createState() => _MyStackState();
}

class _MyStackState extends State<MonStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asnec-it"),
      ),
      body: Center(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                color: Colors.purple,
                width: 300,
                height: 300,
              ),

              Container(
                color: Colors.lightGreen,
                width: 100,
                height: 150,
              ),

              Container(
                color: Colors.deepOrange,
                width: 50,
                height: 50,
              ),
            ],
          ),
      ),
    );
  }
}
