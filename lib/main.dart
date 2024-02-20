import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

 class DicePageState extends State<DicePage> {
   var leftDice = 1;
   var rightDice = 5;

   void updateState () {
     leftDice = Random().nextInt(6) + 1;
     rightDice = Random().nextInt(6) + 1;
   }

   @override
   Widget build(BuildContext context) {
     return Center(
       child: Row(
         children: [
           Expanded(
               child: MaterialButton(
                 onPressed: () => setState(updateState),
                 child: Image.asset('images/dice$leftDice.png'),
               )),
           Expanded(
               child: MaterialButton(
                 onPressed: () => setState(updateState),
                 child: Image.asset('images/dice$rightDice.png'),
               )),
         ],
       ),
     );
   }
 }

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  DicePageState createState() {
    return DicePageState();
  }

}
