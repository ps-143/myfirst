import 'package:flutter/material.dart';
import 'package:myfirst/drawer.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

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

class NameCard extends StatelessWidget {
  const NameCard({
    Key key,
    @required this.name,
    @required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String name;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset("assets/p1.jpeg"),
          SizedBox(
            height: 20,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your name",
                  labelText: "Name"),
            ),
          )
        ],
      ),
    );
  }
}
