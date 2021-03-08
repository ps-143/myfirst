import 'package:flutter/material.dart';
import 'package:myfirst/drawer.dart';
import 'package:myfirst/name_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var name = "My Name";
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text("MyFirstApp"),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: NameCard(name: name, nameController: _nameController),
        ),
      )),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          name = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.done),
      ),
    );
  }
}
