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
        leading: IconButton(
            onPressed: () {
              print(const Text("back"));
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("ShopPro"),
        actions: [
          IconButton(
              onPressed: () {
                print(const Text("login"));
              },
              icon: const Icon(Icons.login))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [
            Icon(
              Icons.person,
              size: 300,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.person), hintText: "Enter username"),
              ),
            ),
            Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      hintText: "Enter password",
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      print("Forget?");
                    },
                    child: const Text("Forget?"))
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: TextButton(
                        onPressed: () {
                          print("Login");
                        },
                        style: TextButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            textStyle: const TextStyle(fontSize: 15)),
                        child: const Text("Login"),
                      )),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 2,
                    endIndent: 10,
                  ),
                ),
                Text("OR"),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 2,
                    indent: 10,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
