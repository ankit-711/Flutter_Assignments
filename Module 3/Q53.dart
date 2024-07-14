import 'package:flutter/material.dart';

class Q53 extends StatefulWidget {
  const Q53({super.key});

  @override
  State<Q53> createState() => _Q53State();
}

class _Q53State extends State<Q53> {
  Color bgcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Change Background"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  bgcolor = Colors.red;
                });
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.red),
              ),
              child: Text(
                "Red",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  bgcolor = Colors.green;
                });
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.green),
              ),
              child: Text(
                "Green",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  bgcolor = Colors.blue;
                });
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
              child: Text(
                "Blue",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
