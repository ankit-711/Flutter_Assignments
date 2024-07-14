import 'package:flutter/material.dart';

class Q52 extends StatefulWidget {
  const Q52({super.key});

  @override
  State<Q52> createState() => _Q52State();
}

class _Q52State extends State<Q52> {
  TextEditingController _numController1 = TextEditingController();
  TextEditingController _numController2 = TextEditingController();
  double? _num1;
  double? _num2;
  double? ans;
  int? choice;
  String? error =" ";

  void calc() {
    _num1 = double.parse(_numController1.text.toString());
    _num2 = double.parse(_numController2.text.toString());

    setState(() {
      setState(() {
        if (choice == 1) {
          ans = _num1! + _num2!;
        } else if (choice == 2) {
          ans = _num1! - _num2!;
        } else if (choice == 3) {
          ans = _num1! * _num2!;
        } else if (choice == 4) {
          if (_num2 != 0) {
            ans = _num1! / _num2!;
          } else {
            error = "Can't divide by zero";
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Calculator"),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _numController1,
              decoration: InputDecoration(
                labelText: "Number 1",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _numController2,
              decoration: InputDecoration(
                labelText: "Number 2",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RadioListTile(
            value: 1,
            title: Text("Addition"),
            groupValue: choice,
            onChanged: (value) {
              setState(() {
                choice = value;
              });
            },
          ),
          RadioListTile(
            value: 2,
            title: Text("Subtraction"),
            groupValue: choice,
            onChanged: (value) {
              setState(() {
                choice = value;
              });
            },
          ),
          RadioListTile(
            value: 3,
            title: Text("Multiplication"),
            groupValue: choice,
            onChanged: (value) {
              setState(() {
                choice = value;
              });
            },
          ),
          RadioListTile(
            value: 4,
            title: Text("Division"),
            groupValue: choice,
            onChanged: (value) {
              setState(() {
                choice = value;
              });
            },
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.cyan),
            ),
            onPressed: () {
              calc();
            },
            child: Text(
              "Answer",
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 10),
          if (ans != null)
            Text(
              "Answer is $ans.",
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            if (choice==4 && _num2==0)
            Text("$error"),
        ],
      ),
    );
  }
}
