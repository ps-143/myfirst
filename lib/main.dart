import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyFirstApp"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        width: 200,
        height: 200,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: Colors.lime,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text("Hello!"),
      ),
    );
  }
}
