import 'package:flutter/material.dart';

class Q491 extends StatelessWidget {
  const Q491({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: -10,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 385,
              height: 190,
              color: Colors.red,
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 190,
                  height: 190,
                  color: Colors.blue,
                ),
                Container(
                  width: 190,
                  height: 190,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 190,
                  height: 190,
                  color: Colors.blue,
                ),
                Container(
                  width: 190,
                  height: 190,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 125,
                  height: 125,
                  color: Colors.yellow,
                ),
                Container(
                  width: 125,
                  height: 125,
                  color: Colors.yellow,
                ),
                Container(
                  width: 125,
                  height: 125,
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 125,
                  height: 125,
                  color: Colors.yellow,
                ),
                Container(
                  width: 125,
                  height: 125,
                  color: Colors.yellow,
                ),
                Container(
                  width: 125,
                  height: 125,
                  color: Colors.yellow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
