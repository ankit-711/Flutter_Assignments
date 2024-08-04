import 'package:flutter/material.dart';

class Q65 extends StatefulWidget {
  const Q65({super.key});

  @override
  State<Q65> createState() => _Q65State();
}

class _Q65State extends State<Q65> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Alert Dialog for Exit"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: ((context) => AlertDialog(
                          title: Text("Do you want to Exit?"),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("No")),
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("Yes")),
                          ],
                        )),
                  );
                },
                child: Text("Exit")),
          ),
        ],
      ),
    );
  }
}
