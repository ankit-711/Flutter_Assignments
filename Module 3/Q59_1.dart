import 'package:flutter/material.dart';
import 'package:myfirstproject/Assignment/Q59_2.dart';

class Q591 extends StatefulWidget {
  const Q591({super.key});

  @override
  State<Q591> createState() => _Q591State();
}

class _Q591State extends State<Q591> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String? _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign Up"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Name",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _numberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Mobile Number",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _email = _emailController.text.toString();
                    _password = _passwordController.text.toString();
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Q592(
                            email_login: _email, password_login: _password),
                      ));
                },
                child: Text("Sign Up")),
          ],
        ),
      ),
    );
  }
}
