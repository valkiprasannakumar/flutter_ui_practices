import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/screens/user/model/user_model.dart';
import 'package:http/http.dart' as http;

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<UserModel> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        title: Text(
          "Rest Api",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(user.image.thumbnail),
            ),
            title: Text(
              user.person.first,
              style: Theme.of(context).textTheme.bodyLarge!
                  .copyWith(fontWeight: FontWeight.w400),
            ),
            subtitle: Text(user.phone),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
        shape: CircleBorder(),
        onPressed: () {
          fetchUsers();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void fetchUsers() async {
    print('user fecthing.....');
    const url = "https://randomuser.me/api/?results=100";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final result = json["results"] as List<dynamic>;
    setState(() {
      users = result.map((e) {
        final person = e["name"];
        final image = e["picture"];
        return UserModel(
          gender: e["gender"],
          email: e["email"],
          phone: e["phone"],
          cell: e["cell"],
          nat: e["nat"],
          image: PersonImage(
            large: image["large"],
            medium: image["medium"],
            thumbnail: image["thumbnail"],
          ),
          person: PersonDetails(
            title: person["title"],
            first: person["first"],
            last: person["last"],
          ),
        );
      }).toList();
    });
    print("Users fecthed");
  }
}
