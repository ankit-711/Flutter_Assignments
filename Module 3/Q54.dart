import 'dart:core';
import 'package:flutter/material.dart';

class Q54 extends StatefulWidget {
  const Q54({super.key});

  @override
  State<Q54> createState() => _Q54State();
}

class _Q54State extends State<Q54> {
  var textSize = 10.0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Change Font-size",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Center(
                child: Text(
              "You can change my size by using these buttons.",
              style: TextStyle(fontSize: textSize),
            )),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    textSize = textSize + 3;
                  });
                },
                child: Text(
                  "+",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.red)),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    textSize = textSize - 3;
                  });
                },
                child: Text(
                  "-",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.green)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}