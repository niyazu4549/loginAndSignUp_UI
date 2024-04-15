import 'package:flutter/material.dart';

class CommonScreens extends StatefulWidget {
  const CommonScreens({super.key});

  @override
  State<CommonScreens> createState() => _CommonScreensState();
}

class _CommonScreensState extends State<CommonScreens> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Login & Signup"),
          bottom: const TabBar(tabs: [
            Tab(text: "Login"),
            Tab(
              text: "SignUp",
            ),
          ]),
        ),
        body: const TabBarView(
          children: [
            LoginCard(),
            SignUpCard(),
          ],
        ),
      ),
    );
  }
}

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const TextField(
                decoration: InputDecoration(
                  label: Text("Email"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text("Password"),
                  ),
                ),
              ),
              ElevatedButton(
                child: const Text("Login"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpCard extends StatelessWidget {
  const SignUpCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(20.0),
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const TextField(
                  decoration: InputDecoration(labelText: "Full Name"),
                ),
                const TextField(
                  decoration: InputDecoration(labelText: "Email"),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Password"),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Sign Up"),
                )
              ],
            )),
      ),
    );
  }
}
