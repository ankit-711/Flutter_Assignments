import 'package:flutter/material.dart';

class Q64 extends StatefulWidget {
  @override
  _Q64State createState() => _Q64State();
}

class _Q64State extends State<Q64> {
 
  List<String> cities = [
    "Ahmedabad","Mumbai","Kolkata","Delhi","Surat","Hyderabad"
  ];
  String? selectedCity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Choose City",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("City: $selectedCity",style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    scrollable: true,
                    title: Text('Select a City'),
                    content: Column(
                      children: cities.map((city) {
                        return RadioListTile<String>(
                          title: Text(city),
                          value: city,
                          groupValue: selectedCity,
                          onChanged: (value) {
                            setState(() {
                              selectedCity = value;
                            });
                            Navigator.of(context)
                                .pop(); 
                          },
                        );
                      }).toList(),
                    ),
                    actions: [
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop(); 
                        },
                      ),
                    ],
                  );
                },
              ),
              child: Text('Select'),
            ),
          ],
        ),
      ),
    );
  }
}
