import 'package:flutter/material.dart';

class Q50 extends StatefulWidget {
  const Q50({super.key});

  @override
  State<Q50> createState() => _Q50State();
}

class _Q50State extends State<Q50> {
  TextEditingController _numController = TextEditingController();
  var _number;
  var rever;
  int ReverseNumber(int num) {
    int rem, rev = 0;

    while (num != 0) {
      rem = num % 10;
      rev = (rev * 10) + rem;
      num = num ~/ 10;
    }
    return rev;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reverse Number"),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _numController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.cyan),
            ),
            onPressed: () {
              _number = int.parse(_numController.text.toString());
              setState(() {
                rever = ReverseNumber(_number);
              });
            },
            child: Text(
              "Reverse",
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 20),
          if (rever != null)
            Text(
              "Reverse of $_number is $rever.",
              style: TextStyle(fontSize: 20),
            ),
        ],
      ),
    );
  }
}
