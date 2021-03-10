import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myfirst/drawer.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Uri url = Uri(
    scheme: "https",
    host: "restcountries.eu",
    path: "/rest/v2/name/India",
    query: "fullText=true",
  );
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

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
              child: data != null
                  ? Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  data[0]['name'],
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(data[0]['region'],
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blueGrey,
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    ))),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // name = _nameController.text;
          // setState(() {});
        },
        child: Icon(Icons.done),
      ),
    );
  }
}
