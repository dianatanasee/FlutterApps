import 'package:flutter/material.dart';

//The main function is the starting point for all our Flutter apps;
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I Am rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.blueGrey,
        body: const Center(
          child: Image(image: AssetImage('images/diamond.png')
              // NetworkImage(
              //     'https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg'),
              ),
        ),
      ),
    ),
  );
}
