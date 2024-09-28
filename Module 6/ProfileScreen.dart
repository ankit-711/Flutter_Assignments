import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myfirebaseproject/Dashboard.dart';
import 'package:myfirebaseproject/MyTextfield.dart';

class ProfileScreen extends StatefulWidget {
  User? user;
  ProfileScreen({this.user});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  Future<void> getUserRecord() async {
    var document = await FirebaseFirestore.instance
        .collection("Users")
        .doc(widget.user!.uid)
        .get();

    setState(() {
      _usernameController.text = document["name"];
      _emailController.text = document["email"];
    });
  }

  Future<void> updateData() async {
    await FirebaseFirestore.instance
        .collection("Users")
        .doc(widget.user!.uid)
        .update({"name": _usernameController.text.toString()});

    ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
      content: Text(
        "Profile Data Updated",
        style: TextStyle(color: Colors.black),
      ),
      duration: Duration(seconds: 2),
    ));

    Navigator.pop(context);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Dashboard(
            user: widget.user,
          ),
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserRecord();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
                child: Text(
              "Profile",
              style: TextStyle(color: Colors.teal, fontSize: 36),
            )),
          ),
          Text(
            "${_emailController.text.toString()}",
            style: TextStyle(color: Colors.black),
          ),
          Mytextfield(
              controller: _usernameController,
              hintText: "Enter Username",
              label: "Username"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  updateData();
                });
              },
              child: Text("Update Profile")),
        ],
      ),
    );
  }
}
