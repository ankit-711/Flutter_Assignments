import 'package:flutter/material.dart';

class Q762 extends StatefulWidget {
  double? sum;
  Q762({super.key, required this.sum});

  @override
  State<Q762> createState() => _Q762State();
}

class _Q762State extends State<Q762> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text(
          "Addition",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Addition is ${widget.sum}",style: TextStyle(fontSize: 40),),
          ],
        ),
      ),
    );
  }
}
