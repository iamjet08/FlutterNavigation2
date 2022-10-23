import 'package:flutter/material.dart';
import './login_screen.dart';

void main() => runApp(const LoginUI());

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Login Screen",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Welcome to PinayFlex.tv",
          ),
        ),
        body: const LoginScreen(),
      ),
    );
  }
}
