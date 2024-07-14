import 'package:flutter/material.dart';

class Q57 extends StatefulWidget {
  const Q57({super.key});

  @override
  State<Q57> createState() => _Q57State();
}

class _Q57State extends State<Q57> {
  Color bgcolor = Colors.white;
  int? choice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: Text("Change Screen Color"),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Radio(
                value: 1,
                groupValue: choice,
                onChanged: (value) {
                  setState(() {
                    choice = value;
                    bgcolor = Colors.red;
                  });
                },
              ),
              Text("Red"),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 2,
                groupValue: choice,
                
                onChanged: (value) {
                  setState(() {
                    choice = value;
                    bgcolor = Colors.green;
                  });
                },
              ),
              Text("Green"),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 3,
                groupValue: choice,
                onChanged: (value) {
                  setState(() {
                    choice = value;
                    bgcolor = Colors.blue;
                  });
                },
              ),
              Text("Blue"),
            ],
          ),
        ],
      ),
    );
  }
}