import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int value1 = 0;
  int value2 = 0;

   void change1(val1){
    setState(() {
       value1 = val1;
    });
  }

   change2(val2){
    setState(() {
      value2 = val2;
    });
  }

  //Premier bouton radio sans libelle
  Widget buttonRadio(){
    List <Widget> buttonRadio = [];
    for(int i=0; i<5; i++){
      buttonRadio.add(Radio(
          value: i, groupValue: value1, onChanged: change1
      ));
    }
    Column column = Column(children: buttonRadio,);
    return column;
  }

  //Deuxième bouton radio avec libelle
  Widget buttonRadioList(){
    List <Widget> buttonRadioList = [];
    for(int i=0; i<5; i++){
      buttonRadioList.add(RadioListTile(
        
          value: i, groupValue: value2, onChanged: change2,
          activeColor: Colors.pink,
          controlAffinity: ListTileControlAffinity.platform,
          title: Text("Choix $i"),
      ));
    }
    Column column = Column(children: buttonRadioList,);
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asnec-it"),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 10),
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
                        onPressed: () {},
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
                )

              ],
            ),

            //---------------------- OutlineButton

          )
      ),


      //---------------------- Exercice Floating Action---------------------------
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
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

