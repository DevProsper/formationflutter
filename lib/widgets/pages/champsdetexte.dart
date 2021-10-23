import 'package:flutter/material.dart';
import 'dart:async';
class MonChampText extends StatefulWidget {
  const MonChampText({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MonChampText> createState() => _MonChampTextState();
}

class _MonChampTextState extends State<MonChampText> {

  //Récupère les données du dataPicker
  String _val = "";

  Future _selectfulldate() async {
    DateTime? picker = await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2030),
    );

    if(picker != null){
      setState(() {
        _val = picker.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Champ texte"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [

              TextField(
                decoration: InputDecoration(
                  labelText: "Nom",
                  hintText: "Entrez votre nom :",
                  icon: Icon(Icons.person, color: Colors.pink,size: 20,),
                ),
                keyboardType: TextInputType.text,
              ),

              TextField(
                decoration: InputDecoration(
                  labelText: "Telephone",
                  hintText: "Entrez votre numero de tel :",
                  icon: Icon(Icons.phone, color: Colors.pink,size: 20,),
                ),
                keyboardType: TextInputType.number,
              ),

              TextField(
                decoration: InputDecoration(
                  labelText: "Mot de passe",
                  hintText: "Entrez votre mot de passe :",
                  icon: Icon(Icons.person, color: Colors.pink,size: 20,),
                ),
                keyboardType: TextInputType.text,
                scrollPadding: const EdgeInsets.all(20.0),
                obscureText: true,
              ),

              const SizedBox(height: 30),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  backgroundColor: Colors.pink,
                  textStyle: const TextStyle(fontSize: 14),
                ),
                onPressed: () {
                  _showMyDialog();
                },
                child: const Text('Alerte dialogue'),
              ),

              const SizedBox(height: 30),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  backgroundColor: Colors.pink,
                  textStyle: const TextStyle(fontSize: 14),
                ),
                onPressed: () {
                  _selectfulldate();
                },
                child: const Text('DatePicker'),
              ),
              const SizedBox(height: 30),
              Text('$_val ', style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold,), )

            ],
          ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Titre de la boite de dialogue'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Annuler'),
              onPressed: () {
                setState(() {
                  print("Annuler...");
                });
              },
            ),

            TextButton(
              child: const Text('Soumettre'),
              onPressed: () {
                setState(() {
                  print("Sous mettre...");
                });
              },
            ),
          ],
        );
      },
    );
  }
  //
}
