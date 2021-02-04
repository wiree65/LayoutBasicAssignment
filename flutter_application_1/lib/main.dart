import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Row and Col1'),
      ),
      body: Center(
        child: buildRow(),
      ),
    ));
  }

  Widget buildRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/pic1.jpg'),
          Image.asset('assets/images/pic2.jpg'),
          Image.asset('assets/images/pic3.jpg'),
        ],
      );
}
