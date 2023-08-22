import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

// STATELESS CLASS
// .................................................

// class DicePage extends StatelessWidget {
//   //CREATE the variable
//   int leftDiceNumber = 5;
//
//   @override
//   Widget build(BuildContext context) {
//     //the part that is making hot reload is this one so we should declare the variabiles right here
//     // CHANGE the variable
//     leftDiceNumber = 2;
//
//     return Center(
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           // make sure that the element is not overflowing
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print("Left button got pressed");
//               },
//               child: Image.asset('images/dice$leftDiceNumber.png'),
//             ),
//           ),
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print("Right button got pressed");
//               },
//               child: Image.asset('images/dice1.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// STATEFUL CLASS
// .................................................

//WIDGET PART
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

//STATE PART
class _DicePageState extends State<DicePage> {
  //CREATE the variable
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    //the part that is making hot reload is this one so we should declare the variabiles right here
    // CHANGE the variable
    // leftDiceNumber = 1;

    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // make sure that the element is not overflowing
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
