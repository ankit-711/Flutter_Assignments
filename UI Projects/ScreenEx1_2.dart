import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Screenex12 extends StatefulWidget {
  const Screenex12({super.key});

  @override
  State<Screenex12> createState() => _Screenex12State();
}

class _Screenex12State extends State<Screenex12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(0),
          // leading: IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.arrow_back,
          //       color: Colors.white,
          //     )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
          ]),
      body: SlidingUpPanel(
        color: Colors.black.withAlpha(150),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        panel: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Icon(
                  Icons.horizontal_rule,
                  size: 60,
                  color: Colors.white54,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage("assets/images/user.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "BY JACOB BROKOWSKI",
                    style: TextStyle(color: Colors.white54, fontSize: 16),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white54,
                        size: 35,
                      )),
                ],
              ),
              Text(
                "Ginger & Garlic \nNoodle Soup",
                style: GoogleFonts.dmSerifText(
                  color: Colors.white70,
                  fontSize: 43,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 18,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 18,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 18,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 18,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 18,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "3.5k Reviews",
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Ginger Garlic Noodle Soup with Bok Choy is a\nnutritious, comforting, and flu-fighting twenty-\nminute recipe made with a vegetarian broth, \nnoodles, mushrooms, and baby bok choy.",
                style: TextStyle(fontSize: 16, color: Colors.white54),
              ),
              SizedBox(height: 30,),
              Container(
                width: 390,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Center(child: Text("VIEW RECIPE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),)),
              ),
            ],
          ),
        ),
        collapsed: Container(
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(150),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/images/Recipe1.jpg",
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.black.withOpacity(0.6),
              ),
            )
          ],
        ),
      ),
    );
  }
}
