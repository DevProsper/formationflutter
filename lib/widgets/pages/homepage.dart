import 'package:flutter/material.dart';
import 'package:tppratique/widgets/pages/champsdetexte.dart';
import 'package:tppratique/widgets/pages/monstack.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //Variable initalisé à zéro pour la radio bouton
  int value1Check1 = 0;
  int value1Check2 = 0;

  //Variable initalisé à zéro pour la Check box
  bool valueRadio1 = false;
  bool valueRadio2 = false;

  //Variable initalisé à zéro pour le switch
  bool valueSwitch1 = false;
  bool valueSwitch2 = false;

  double valueSlider = 0.0;

  //Cette fonction retourne l'élément selectioné du Slider
  void changeSlider(val1){
    setState(() {
      valueSlider = val1;
    });
  }

  //Cette fonction retourne l'élément selectioné du premier radio bouton
  void changeSwitch1(val1){
    setState(() {
      valueSwitch1 = val1;
    });
  }

  //Cette fonction retourne l'élément selectioné du premier radio bouton
   void changeSwitch2(val2){
    setState(() {
      valueSwitch2 = val2;
    });
  }

  //Cette fonction retourne l'élément selectioné du deuxième radio bouton
   void changeRadio2(val2){
    setState(() {
      value1Check2 = val2;
    });
  }

  void changeRadio1(val1){
    setState(() {
      valueRadio1 = val1;
    });
  }

  //Premier bouton radio sans libelle
  Widget buttonRadio(){
    List <Widget> buttonRadio = [];
    for(int i=0; i<5; i++){
      buttonRadio.add(Radio(
          value: i, groupValue: value1Check1, onChanged: changeRadio1
      ));
    }
    Column column = Column(children: buttonRadio,);
    return column;
  }

  //Deuxième bouton radio avec le libelle : Choix
  Widget buttonRadioList(){
    List <Widget> buttonRadioList = [];
    for(int i=0; i<5; i++){
      buttonRadioList.add(RadioListTile(

          value: i, groupValue: value1Check2, onChanged: changeRadio2,
          activeColor: Colors.pink,
          controlAffinity: ListTileControlAffinity.platform,
          title: Text("Choix $i"),
      ));
    }
    Column column = Column(children: buttonRadioList,);
    return column;
  }

  //Cette fonction retourne l'élément selectioné de la première CheckBox
  void changeCheckbox(value1){
     setState(() {
       valueRadio1 = value1;
     });
  }

  //Cette fonction retourne l'élément selectioné de la deuxième CheckBox
  void changeCheckbox2(value2){
    setState(() {
      valueRadio2 = value2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asnec-it"),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 10, bottom: 50),
          child: Container(

            //--------------------- Exercice TextButton avec le stack et le gardient-----------------
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const SizedBox(height: 30),
                //Forme arrondi
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  //Stack me permet ici de superposer mon texte sur container avec une nuance de couleur
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFFFF80AB),
                                Color(0xFFF50057),
                                Color(0xFFC51162),
                              ],
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 14),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MonChampText(title: "Champs de TextField")));
                        },
                        child: const Text('Text bouton avec le stack et le gardient'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Text("Choisir le bouton radio"),
                buttonRadio(),

                const SizedBox(height: 30),
                const Text("Radio bouton liste"),
                buttonRadioList(),

                //---------------------- Fin Exercice Stack et le gardient : TextButton

                //---------------------- OutlineButton
                OutlinedButton(
                  onPressed: (){
                    print("Il se passe quelque chose");
                  },
                  child:  Container(
                    child:  const Text("Outline Widget",
                      style: TextStyle(
                          color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),
                const Text("Bienvenu", style: TextStyle(
                    color: Colors.black,
                    fontSize: 14
                ),),
                Checkbox(value: valueRadio1, onChanged: changeCheckbox),

                CheckboxListTile(
                    value: valueRadio2,
                    onChanged: changeCheckbox2,
                    title: const Text("Liste checkbox"),
                    subtitle: const Text("sous titre"),
                    controlAffinity: ListTileControlAffinity.trailing,
                ),

                const SizedBox(height: 30),
                Switch(value: valueSwitch1, onChanged: changeSwitch1),
                const SizedBox(height: 30),
                SwitchListTile(
                    value: valueSwitch2, 
                    onChanged: changeSwitch2,
                    activeColor: Colors.lightGreen,
                    title: const Text("Valider l'interupteur"),
                ),

                const SizedBox(height: 30),
                Text('Le curseur actuel est de ${(valueSlider*100).round()}',),
                Slider(value: valueSlider, onChanged: changeSlider)
                

              ],
            ),

            //---------------------- OutlineButton

          )
      ),


      //---------------------- Exercice Floating Action---------------------------
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context)
              => const MonStack(title: "Page de stack")));
        },
        label: const Text("Approuve"),
        icon: const Icon(Icons.touch_app_rounded),
        backgroundColor: Colors.pink,
      ),

      /*floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          // Add your onPressed code here!
        },
        tooltip: "Floating tooltip",
        child: const Text("LLL"),
        elevation: 1.0,
        backgroundColor: Colors.pink,
      ),*/

      //---------------------- Fin Floating Action---------------------------
    );

  }
}

