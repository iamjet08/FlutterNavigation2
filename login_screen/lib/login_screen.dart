import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Padding is distance of objects from the sides
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Big LOGIN Text
              const Text(
                "LOGIN",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  color: Colors.teal,
                ),
              ),

              //Space after the LOGIN text
              const SizedBox(
                height: 25,
              ),

              //Enter Email
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Enter email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //Enter Password
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Enter Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),

              const SizedBox(
                height: 5,
              ),

              //Forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {}, child: const Text("Forget Password?"))
                ],
              ),

              const SizedBox(
                height: 25,
              ),

              //Login Button
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient:
                      const LinearGradient(colors: [Colors.blue, Colors.green]),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Page2()));
                  },
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              //Fingerprint icon
              const Icon(
                Icons.fingerprint,
                size: 60,
                color: Colors.teal,
              ),
              const SizedBox(
                height: 10,
              ),

              //Divider line after fingerprint icon
              const Divider(
                height: 30,
                color: Colors.black,
              ),

              const SizedBox(
                height: 10,
              ),

              //Register Account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text("Register Account"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    //Padding is distance of objects from the sides
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Big HOMEPAGE Text
              const Text(
                "HOMEPAGE",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  color: Colors.teal,
                ),
              ),

              //Space after the HOMEPAGE text
              const SizedBox(
                height: 25,
              ),

              //Logout Button
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient:
                      const LinearGradient(colors: [Colors.blue, Colors.green]),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "LOGOUT",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
