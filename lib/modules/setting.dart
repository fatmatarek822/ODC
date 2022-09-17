import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          ListTile(
            title: Text(
              'FAQ',
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 22,
            ),
          ),
          Divider(
            height: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.black26,
          ),
          ListTile(
            title: Text(
              'Terms & Conditions',
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 22,
            ),
          ),
          Divider(
            height: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.black26,
          ),
          ListTile(
            title: Text(
              'Our Partners',
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 22,
            ),
          ),
          Divider(
            height: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.black26,
          ),
          ListTile(
            title: Text(
              'Support',
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 22,
            ),
          ),
          Divider(
            height: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.black26,
          ),
          ListTile(
            title: Text(
              'Log out',
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}
