import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(229, 57, 53, 1.0),
        title: Text('Setting'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Account'),
            leading: Icon(Icons.account_circle),
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text('Notifications'),
            leading: Icon(Icons.notifications),
            onTap: () {
            },
          ),
          ListTile(
            title: Text('Privacy'),
            leading: Icon(Icons.lock),
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text('About'),
            leading: Icon(Icons.info),
            onTap: () {
              
            },
          ),
        ],
      ),
    );
  }
}
