import 'package:flutter/material.dart';

class Q62 extends StatelessWidget {
  const Q62({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Alert Dialog Example",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Alert Dialog"),
                          content: Text('This is example of alert dialog.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      });
                },
                child: Text("Enter")),
          ),
        ],
      ),
    );
  }
}
