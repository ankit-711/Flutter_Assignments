import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myfirebaseproject/Dashboard.dart';
import 'package:myfirebaseproject/MyTextfield.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> userLogin(
    String? email,
    String? password,
  ) async {
    try {
      // it will store data in Authentication
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);

      User? user = userCredential.user;

      setState(() {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Dashboard(user: user,),
            ));
      });
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Sign In Failed"),
            content: Text("$e"),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    _emailController.clear();
                    _passwordController.clear();

                    Navigator.pop(context);
                  },
                  child: const Text("Ok")),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("SignIn Screen"),
        backgroundColor: Colors.teal[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Mytextfield(
                controller: _emailController,
                hintText: "Enter Email",
                label: "Email"),
            const SizedBox(
              height: 10,
            ),
            Mytextfield(
              controller: _passwordController,
              hintText: "Enter Password",
              label: "Password",
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                userLogin(_emailController.text.toString(),
                    _passwordController.text.toString());
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.teal.shade600),
              ),
              child: const Text(
                "Sign In",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
