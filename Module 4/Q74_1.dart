import 'package:flutter/material.dart';
import 'package:myfirstproject/Assignment/Q74_2.dart';

class Q741 extends StatefulWidget {
  const Q741({super.key});

  @override
  State<Q741> createState() => _Q741State();
}

class _Q741State extends State<Q741> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: Text(
          "Screen 1",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Q742(),
                      ));
                },
                child: Text("Next Screen")),
          ),
        ],
      ),
    );
  }
}
