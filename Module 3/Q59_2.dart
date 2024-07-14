import 'package:flutter/material.dart';

class Q592 extends StatefulWidget {
  String? email_login, password_login;
  Q592({super.key, required this.email_login, required this.password_login});

  @override
  State<Q592> createState() => _Q592State();
}

class _Q592State extends State<Q592> {
  TextEditingController _loginEmail = TextEditingController();
  TextEditingController _loginPass = TextEditingController();
  bool login = false;
  String? e_login, p_login;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _loginEmail,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _loginPass,
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
                    e_login = _loginEmail.text.toString();
                    p_login = _loginPass.text.toString();
                    if ((widget.email_login == e_login) &&
                        (widget.password_login == p_login)) {
                      login = true;
                    }
                  });
                  if (login) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Login Successfull"),
                      ),
                    );
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Invalid Email Or Password"),
                      ),
                    );
                  }
                },
                child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
