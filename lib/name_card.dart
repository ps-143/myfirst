import 'package:flutter/material.dart';

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
      shadowColor: Colors.blueGrey,
      color: Colors.cyan[50],
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
