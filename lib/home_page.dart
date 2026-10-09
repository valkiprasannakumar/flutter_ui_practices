import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/screens/login_screen.dart';
import 'package:flutter_ui_practices/screens/user/user_screen.dart';
import 'package:flutter_ui_practices/screens/widgets/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Ui practices",
          style: Theme.of(context).textTheme.titleLarge!
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.purple,
                shape: LinearBorder(),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text("LoginScreen"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.purple,
                shape: LinearBorder(),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserScreen()),
                );
              },
              child: Text("UserScreen"),
            ),
          ],
        ),
      ),
    );
  }
}
