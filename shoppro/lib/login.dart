import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.back_hand))),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Icon(Icons.abc),
            TextField(
              decoration: InputDecoration(hintText: "Enter username"),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Enter password"),
            )
          ],
        ),
      ),
    );
  }
}
