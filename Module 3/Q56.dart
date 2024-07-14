import 'package:flutter/material.dart';

class Q56 extends StatefulWidget {
  const Q56({super.key});

  @override
  State<Q56> createState() => _Q56State();
}

class _Q56State extends State<Q56> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images Around Text"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets//images/food.png', width: 100, height: 100),
                Image.asset('assets//images/strawb.png', width: 100, height: 100),
              ],
            ),
            Text(
              'TEXT VIEW',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets//images/user.png', width: 100, height: 100),
                Image.asset('assets//images/Onion.png', width: 100, height: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
