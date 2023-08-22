import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Using CONTAINER
// For single child
// ................................................................
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//           child: Container(
//             margin: EdgeInsets.fromLTRB(20.0, 10.0, 30.0, 40.0),
//             padding: EdgeInsets.all(20.0),
//             height: 100.0,
//             width: 100.0,
//             color: Colors.white,
//             child: Text('Hello'),
//           ),
//         ),
//       ),
//     );
//   }
// }
// ........................................................................

// Using COLUMNS and ROWS
// For multiple children
// ........................................................................
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//             child: Column(
//           // mainAxisSize: MainAxisSize.min,
//           verticalDirection: VerticalDirection.up,
//           mainAxisAlignment: MainAxisAlignment.end,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Container(
//               height: 100.0,
//               // width: double.infinity,
//               color: Colors.blue,
//               child: Text('Container 1'),
//             ),
//             //Adding spacing between containers
//             SizedBox(
//               height: 20.0,
//             ),
//             Container(
//               height: 100.0,
//               // width: double.infinity,
//               color: Colors.white,
//               child: Text('Container 2'),
//             ),
//             Container(
//               height: 100.0,
//               // width: double.infinity,
//               color: Colors.red,
//               child: Text('Container 3'),
//             ),
//             //Create a container for making the width full
//             Container(
//               width: double.infinity,
//             )
//           ],
//         )),
//       ),
//     );
//   }
// }
// ........................................................................

//CHALANGE

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       backgroundColor: Colors.teal,
//       body: SafeArea(
//           child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Container(
//             color: Colors.red,
//             width: 100.0,
//             height: double.infinity,
//           ),
//           Container(
//             color: Colors.yellow,
//             width: 100.0,
//             height: 100.0,
//           ),
//           Container(
//             color: Colors.blue,
//             width: 100.0,
//             height: double.infinity,
//           ),
//         ],
//       )),
//     ));
//   }
// }
// ........................................................................

//CARD APP
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('images/profile.jpg'),
          ),
          Text(
            'Diana Tanase',
            style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico'),
          ),
          Text(
            'FRONTEND DEVELOPER',
            style: TextStyle(
              fontFamily: 'Source Sans 3',
              color: Colors.tealAccent,
              fontSize: 20.0,
              letterSpacing: 2.5,
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.tealAccent,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '0726 04 95 69',
                    style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Source Sans 3',
                        fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'diana.tanase@tremend.com',
                    style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Source Sans 3',
                        fontSize: 20.0),
                  ),
                )),
          ),
        ],
      )),
    ));
  }
}
