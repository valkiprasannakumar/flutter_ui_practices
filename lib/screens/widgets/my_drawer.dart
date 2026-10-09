import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: DrawerHeader(
        padding: EdgeInsets.all(10),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
              child: Icon(Icons.person, size: 40),
            ),
            Text(
              "Flutter Ui Practices",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "Flutter Ui Practices",
              style: Theme.of(context).textTheme.bodySmall,
            ),

            Divider(),

            ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
            ListTile(leading: Icon(Icons.logout), title: Text("Logout")),
          ],
        ),
      ),
    );
  }
}
