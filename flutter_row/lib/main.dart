import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row Example'),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 20,
              height: 200,
              color: Colors.green,
            ), // Container
            Container(
              width: 10,
              height: 200,
              color: Colors.yellow,
            ), // Container
            Container(
              width: 25,
              height: 200,
              color: Colors.blue,
            ), // Container
            Container(
              width: 30,
              height: 200,
              color: Colors.amber,
            ), // Container
          ],
        ),
      ),
    );
  }
}
