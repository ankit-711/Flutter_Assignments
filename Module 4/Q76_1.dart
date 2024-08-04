import 'package:flutter/material.dart';
import 'package:myfirstproject/Assignment/Q76_2.dart';

class Q761 extends StatefulWidget {
  const Q761({super.key});

  @override
  State<Q761> createState() => _Q761State();
}

class _Q761State extends State<Q761> {

  TextEditingController _num1Controller = TextEditingController();
  TextEditingController _num2Controller = TextEditingController();
  double? num1, num2, sum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: Text(
          "Addition",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 80,
              child: TextField(
                controller: _num1Controller,
                keyboardType: TextInputType.number,
                
                decoration: InputDecoration(
                  hintText: "Enter Number 1",
                  labelText: "Number 1",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 80,
              child: TextField(
                controller: _num2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Number 2",
                  labelText: "Number 2",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black)),
              onPressed: () {
                setState(() {
                  num1 = double.parse(_num1Controller.text.toString());
                  num2 = double.parse(_num2Controller.text.toString());
                  sum = num1! + num2!;
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Q762(
                              sum: sum,
                            ),));
              },
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
