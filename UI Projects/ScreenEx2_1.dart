import 'package:flutter/material.dart';
import 'package:project2/Tasks2/ScreenEx2_2.dart';


class Screenex21 extends StatelessWidget {
  const Screenex21({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: Image.asset(
              "assets/images/Screen_back.jpg",
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
              bottom: 35,
              left: 35,
              right: 35,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  width: 325,
                  height: 325,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Manage your file",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "with Filoo App",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Easy way to manage your file,video",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "images, doc, PDF etc.",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
            right: 60,
            bottom: 330,
            child: Container(
                height: 60,
                width: 60,
                child: Image.asset("assets/images/apple.png")),
          ),
          Positioned(
              bottom: 40,
              left: 175,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screenex22(),
                      ));
                },
                icon: Icon(
                  Icons.arrow_forward_rounded,
                  size: 40,
                ),
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Colors.purple.shade300),
                    iconColor: WidgetStatePropertyAll(Colors.white)),
              ))
        ],
      ),
    );
  }
}
