import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://via.placeholder.com/150"),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Steven"),
                Text(
                  "01:23 a.m.",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            subtitle: Text("Hola mundo!!"),
          ),
        ],
      ),
    );
  }
}
