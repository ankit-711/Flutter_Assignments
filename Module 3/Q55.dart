import 'package:flutter/material.dart';

class Q55 extends StatefulWidget {
  const Q55({super.key});

  @override
  State<Q55> createState() => _Q55State();
}

class _Q55State extends State<Q55> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Check this box to see hidden text"),
                Checkbox(
                  value: ischecked,
                  onChanged: (value) {
                    setState(() {
                      ischecked ? ischecked = false : ischecked = true;
                    });
                  },
                ),
              ],
            ),
            if (ischecked)
              Container(
                child: Text("Flutter",style: TextStyle(fontSize: 25),),
              ),
          ],
        ),
      ),
    );
  }
}
