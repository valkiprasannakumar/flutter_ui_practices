import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Screen",
          style: Theme.of(context).textTheme.titleLarge!,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 24,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomeTextFiled(emailController: _emailController),

            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: "Password",
                hintText: "Enter your password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomeTextFiled extends StatelessWidget {
  const new({super.key, required this._emailController});

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        labelText: "Email",
        hintText: "Enter your Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
