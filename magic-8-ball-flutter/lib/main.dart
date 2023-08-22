import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Magic ball'),
          backgroundColor: Colors.blueAccent,
        ),
        body: MagicBall(),
        backgroundColor: Colors.lightBlueAccent,
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int initialAnswer = 1;
  void generateAnswer() {
    initialAnswer = Random().nextInt(5) + 1;
    print("Answer changed");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            generateAnswer();
          });
        },
        child: Image(
          image: AssetImage('images/ball$initialAnswer.png'),
        ),
      ),
    );
  }
}
