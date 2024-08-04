import 'package:flutter/material.dart';

class Q63 extends StatelessWidget {
  const Q63({super.key});

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
                          content: Text('Choose the correct option'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Positive',style: TextStyle(color: Colors.black),),backgroundColor: Colors.white),
                                );
                              },
                              child: Text('Positive'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Negative',style: TextStyle(color: Colors.black),),backgroundColor: Colors.white,),
                                );
                              },
                              child: Text('Negative'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Neutral',style: TextStyle(color: Colors.black),),backgroundColor: Colors.white),
                                );
                              },
                              child: Text('Neutral'),
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
