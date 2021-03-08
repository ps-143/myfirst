import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Prateek Sharma"),
            accountEmail: Text("ps.prateek.sharma143@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1554126807-6b10f6f6692a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Prateek Sharma"),
            subtitle: Text("Name"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text(
              "ps.prateek.sharma143@gmail.com",
              softWrap: false,
            ),
            subtitle: Text("Email"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
