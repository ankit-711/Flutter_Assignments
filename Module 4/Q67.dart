import 'package:flutter/material.dart';

class Q67 extends StatefulWidget {
  const Q67({super.key});

  @override
  State<Q67> createState() => _Q67State();
}

class _Q67State extends State<Q67> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Options Menu",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Profile"),
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Profile")));
                },
              ),
              PopupMenuItem(
                child: Text("Logout"),
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Logout")));
                },
              ),
            ],
            icon: Icon(Icons.more_vert,color: Colors.white,),
          )
        ],
      ),
    );
  }
}
