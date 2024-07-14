import 'package:flutter/material.dart';

class Q58 extends StatefulWidget {
  const Q58({super.key});

  @override
  State<Q58> createState() => _Q58State();
}

class _Q58State extends State<Q58> {
  double r = 1.0, g = 1.0, b = 1.0;
  Color bgcolor = Colors.white;
  void updateBackgroundColor() {
    setState(() {
      bgcolor = Color.fromRGBO(r.toInt(), g.toInt(), b.toInt(), 1.0);
    });
  }

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 175,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Red",style: TextStyle(color: Colors.red,),),
                    Text("Green",style: TextStyle(color: Colors.green,)),
                    Text("Blue",style: TextStyle(color: Colors.blue,)),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Slider(
                    value: r,
                    min: 1.0,
                    max: 255.0,
                    onChanged: (value) {
                      setState(() {
                        r = value;
                        updateBackgroundColor();
                      });
                    },
                  ),
                  Slider(
                    value: g,
                    min: 1.0,
                    max: 255.0,
                    onChanged: (value) {
                      setState(() {
                        g = value;
                        updateBackgroundColor();
                      });
                    },
                  ),
                  Slider(
                    value: b,
                    min: 1.0,
                    max: 255.0,
                    onChanged: (value) {
                      setState(() {
                        b = value;
                        updateBackgroundColor();
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
