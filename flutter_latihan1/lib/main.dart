import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ), // AppBar

        body: Center(
          child: Text(
            "Haii, Selamat datang",

//maxLines: 2,

//overflow: TextOverflow.ellipsis,

            style: TextStyle(
                backgroundColor: const Color.fromARGB(255, 255, 200, 36),
                color: Colors.white,
                fontSize: 30),
          ), // TextStyle // Text
        ), // Center
      ), // Scaffold
    ); // MaterialApp
}
}
