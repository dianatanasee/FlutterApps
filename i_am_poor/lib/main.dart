import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Doggo'),
      ),
      body: const Center(
        child: Image(
          image: AssetImage('images/dog.jpg'),
        ),
      ),
    ),
  ));
}
